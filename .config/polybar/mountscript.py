import subprocess
import argparse

def get_disks(exclude_disks=[]):
    object_list = []
    with subprocess.Popen(['lsblk','-o','MAJ,NAME,TYPE,MODEL'],stdout=subprocess.PIPE, universal_newlines=True) as lsblk:
        with subprocess.Popen(['grep', '-E', 'disk'],stdin=lsblk.stdout,stdout=subprocess.PIPE, universal_newlines=True) as get_disk_type:
            exclude_expression = "|".join(exclude_disks)
            with subprocess.Popen(['grep', '-vE', exclude_expression], stdin=get_disk_type.stdout, stdout=subprocess.PIPE, universal_newlines=True) as matched_disks:
                stdout, stderr = matched_disks.communicate()
                if stderr:return f"Error: {stderr}"

                for i in stdout.strip().splitlines():
                    line =  i.replace(" ".join(i.split()[3::]), "").split()
                    line.append(" ".join(i.split()[3::]))
                    object_list.append(line)

    disk_object_list= []
    for value in range(0, len(object_list)):
        hash = object_list[value:value + 4 ]
        if value % 4 == 0:
            [disk_object_list.append({'maj':hash_o[0],'diskname':hash_o[1], 'type':hash_o[2], 'model':hash_o[3]}) for hash_o in hash]
    return disk_object_list

def check_if_diskname_exists(diskname_list, default_values):
    """
        Use `^diskanme`for get all instances like a regexExp  child of one with pattern diskname[number] or
        Also u can use the diskname
    """
    with subprocess.Popen(['lsblk','-o','NAME'], stdout=subprocess.PIPE, universal_newlines=True) as lsblk:
        for diskname in diskname_list:
            if diskname in default_values: continue
            with subprocess.Popen(['grep','-E',diskname], stdin=lsblk.stdout,stdout=subprocess.PIPE, stderr=subprocess.PIPE, universal_newlines=True) as get_disk_filtered :
                stdout, stderr = get_disk_filtered.communicate()
                if stdout.strip() == "": continue
                if stderr: return f"Error {stderr}"
                default_values.append(stdout.strip())
        return default_values

def main():
    """ For get all instances of diks  """
    default_args_excluded = ['zram']
    parser = argparse.ArgumentParser("simple_example")
    parser.add_argument("disk",nargs='+' ,help="usage: diskname or ^disname", type=str)
    args = parser.parse_args()
    excluded_disks = check_if_diskname_exists(args.disk,  default_args_excluded)
    print(get_disks(excluded_disks))
    return 0

main()

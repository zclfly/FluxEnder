import re
import os

p = re.compile("^\d{4}\d{2}\d{2}$")


def update_hosts_malwaredomains():
    os.system("wget http://mirror1.malwaredomains.com/files/domains.txt")
    os.system("cat domains.txt | grep -v '#' > tmp.txt")

    with open("hosts_malwaredomains.txt", "w") as writer:
        with open("tmp.txt") as f:
            for line in f:
                array = line.split()
                index = 0
                if p.match(array[0]):
                    index = 1
                if "bot" in array[index + 1] or "flux" in array[index + 1]:
                    writer.write(array[index] + "\n")

    os.system("rm domains.txt")
    os.system("rm tmp.txt")
    os.system("cp hosts_malwaredomains.txt ../matrix/hosts_malwaredomains.txt")



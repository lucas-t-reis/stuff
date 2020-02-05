```bash
// Getting string parts
$ s=/the/path/foo.txt
$ echo ${s##*/}
foo.txt
$ s=${s##*/}
$ echo ${s%.txt}
foo
$ echo ${s%.*}
foo


// Checks the amount of space being consumed by different folders
du -cha --max-depth=1 / | grep -E "M|G"
// Investigae candidates further (Supose /var takes alot of Mb Gb)
du -cha --max-depth=1 /var | grep -E "M|G"


// Disable swap memory and gain it's memory in storage back
sudo swapoff -v /swapfile
Go to /etc/fstab file and remove /swapfile entry
```

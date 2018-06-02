line=`grep -n Sys-crash fstab | cut -d':' -f1`
sed ''"$line"'s/defaults/defaults\,nodev/g' fstab

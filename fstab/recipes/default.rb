#
# Cookbook:: fstab
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.


script "change" do
   interpreter 'bash'
   cwd '/etc'
   code <<-EOF
    cp fstab fstab_backup
    line=`grep -n Sys-crash fstab | cut -d':' -f1`
    sed -i ''"$line"'s/defaults/defaults\,nodev/g' fstab
    line=`grep -n Sys-var fstab | cut -d':' -f1`
    sed -i ''"$line"'s/defaults/defaults\,nodev\,nosuid/g' fstab
    line=`grep -n Sys-tmp fstab | cut -d':' -f1`
    sed -i ''"$line"'s/defaults/defaults\,nodev\,nosuid\,noexec/g' fstab
    line=`grep -n Sys-usr fstab | cut -d':' -f1`
    sed -i ''"$line"'s/defaults/defaults\,nodev/g' fstab
    line=`grep -n Sys-home fstab | cut -d':' -f1`
    sed -i ''"$line"'s/defaults/defaults\,nodev\,nosuid/g' fstab
    line=`grep -n Sys-log fstab | cut -d':' -f1`
    sed -i ''"$line"'s/defaults/defaults\,nodev/g' fstab
    line=`grep -n Sys-audit fstab | cut -d':' -f1`
    sed -i ''"$line"'s/defaults/defaults\,nodev/g' fstab
    line=`grep -n Sys-vtmp fstab | cut -d':' -f1`
    sed -i ''"$line"'s/defaults/defaults\,nodev/g' fstab
    line=`grep -n boot fstab | cut -d':' -f1`
    sed -i ''"$line"'s/defaults/defaults\,nodev/g' fstab
    line=`grep -n Sys-opt fstab | cut -d':' -f1`
    sed -i ''"$line"'s/defaults/defaults\,nodev/g' fstab
   EOF
end


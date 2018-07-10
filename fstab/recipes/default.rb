#
# Cookbook:: fstab
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.


template '/tmp/script.sh' do
  source 'fstab.erb'
end

# execute "run the script" do
#   command "sudo sh /tmp/script.sh"
# end

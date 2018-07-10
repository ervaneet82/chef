#
# Cookbook:: chef
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

remote_file '/tmp/chefdk.rpm' do
  source node['jenkins_worker']['chefdk_source']
  not_if { ::File.exist?('/tmp/chefdk.rpm') }
end

yum_package 'chefdk' do
  source '/tmp/chefdk.rpm'
  version node['jenkins_worker']['chefdk_version']
  not_if "rpm -q chefdk"
end

# bash 'pip install' do
#   code <<-EOH
#   yum -y install epel-release
#   yum -y install python-pip
#   pip install awscli
#   EOH
# end
#
# %w(
#    kitchen-sync
#    rake
#    inspec
#    awspec
#    kitchen-ec2
#    berkshelf
#    rubocop
#  ).each do |gem|
#   chef_gem gem do
#     action :install
#     timeout 600
#   end
# end
#
# execute 'install_rubocop' do
#   command 'ln -s /opt/chefdk/embedded/bin/rubocop /usr/bin/rubocop'
#   not_if { ::File.exist?('/usr/bin/rubocop') }
# end
#
# cookbook_file '/home/ec2-user/.chef/jenkins.pem' do
#   source 'jenkins.pem'
#   mode '600'
#   owner 'ec2-user'
#   group 'ec2-user'
#   not_if { ::File.exist?('/home/ec2-user/.chef/jenkins.pem') }
# end

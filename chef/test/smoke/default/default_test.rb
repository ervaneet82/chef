# # encoding: utf-8

# Inspec test for recipe chef::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

describe package('chefdk')do
  it { should be_installed }
end

# describe file('/opt/chefdk/embedded/bin/rake') do
#  it { should exist }
# end
#
# describe file('/opt/chefdk/embedded/bin/inspec') do
#  it { should exist }
# end
#
# describe file('/opt/chefdk/embedded/bin/aws.rb') do
#  it { should exist }
# end
#
# describe file('/opt/chefdk/embedded/bin/berks') do
#  it { should exist }
# end
#
# describe file('/opt/chefdk/embedded/bin/kitchen') do
#  it { should exist }
# end

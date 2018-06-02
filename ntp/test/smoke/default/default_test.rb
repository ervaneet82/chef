# # encoding: utf-8

# Inspec test for recipe ntp::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

describe package('ntp') do
  it { should be_installed }
end


describe file('/etc/ntp.conf') do
  it { should exist }
  its('content') { should match(%r{time1.eng.idirect.net}) }
  its('content') { should match(%r{time2.eng.idirect.net}) }
end

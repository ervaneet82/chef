# # encoding: utf-8

# Inspec test for recipe perl::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

describe bash('perl -MTest::Simple -e \'print "$Test::Simple::VERSION\n";\'') do
  its('stdout') { should match /0.98/ }
end

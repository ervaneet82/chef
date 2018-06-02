package 'ntp'

template '/etc/ntp.conf' do
  source 'ntp.conf.erb'
  variables(
    servers: node['ntp']['servers']
  )
end

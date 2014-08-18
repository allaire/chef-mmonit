default['mmonit']['host'] = node['ipaddress']
default['mmonit']['port'] = 8080
default['mmonit']['dir'] = '/usr/local/mmonit'
default['mmonit']['source']['version'] = '3.2.2'
default['mmonit']['source']['filename'] = "mmonit-#{node['mmonit']['source']['version']}-linux-x64.tar.gz"
default['mmonit']['source']['url'] = "http://mmonit.com/dist/#{node['mmonit']['source']['filename']}"
default['mmonit']['license_owner'] = "Tildeslash Ltd. - Trial License"
default['mmonit']['license'] = nil

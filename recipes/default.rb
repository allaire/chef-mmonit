#
# Cookbook Name:: mmonit
# Recipe:: default
#
# Copyright (C) Mathieu Allaire
#

src_filepath = "#{Chef::Config['file_cache_path']}/#{node['mmonit']['source']['filename']}"

remote_file src_filepath do
  source node["mmonit"]["source"]["url"]
  owner "root"
  group "root"
  mode 00644
  not_if { ::File.exists?(src_filepath) }
end

bash "extract_source" do
  cwd ::File.dirname(src_filepath)
  code <<-EOH
    mkdir -p #{node['mmonit']['dir']}
    tar xzf #{node['mmonit']['source']['filename']} -C #{node['mmonit']['dir']}
    mv #{node['mmonit']['dir']}/*/* #{node['mmonit']['dir']}/
    EOH
  not_if { ::File.exists?(node["mmonit"]["dir"]) }
end

template "#{node['mmonit']['dir']}/conf/server.xml" do
  source "server.xml.erb"
  owner  "root"
  group  "root"
  mode   "0644"
  notifies :restart, "service[mmonit]"
end

# Upstart
if node['mmonit']['init_style'] == 'upstart'
  template "/etc/init/mmonit.conf" do
    source "mmonit-upstart.conf.erb"
    owner  "root"
    group  "root"
    mode   "0644"
  end
end

# Systemd
if node['mmonit']['init_style'] == 'systemd'
  template "/etc/systemd/system/mmonit.service" do
    source "mmonit.service.erb"
    owner "root"
    group "root"
    mode  "0644"
  end
end

service "mmonit" do
  supports status: true, restart: true, reload: true
  action   [:enable, :start]
end

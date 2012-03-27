# Cookbook Name:: mongodb
# Recipe:: default

package "mongodb"

service "mongodb" do
  provider Chef::Provider::Service::Macosx
  supports :status => true, :restart => true, :reload => true
  action [ :enable, :start ]
end

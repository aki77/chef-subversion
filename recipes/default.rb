#
# Cookbook Name:: subversion
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

yum_key node['subversion']['wandisco']['key'] do
  url node['subversion']['wandisco']['key_url']
  action :add
end

yum_repository "WANdisco" do
  description "WANdisco Repo"
  key node['subversion']['wandisco']['key']
  url node['subversion']['wandisco']['url']
  enabled 1
  action :create
end

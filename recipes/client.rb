#
# Cookbook Name:: subversion
# Recipe:: client
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe "subversion"

%w{subversion subversion-devel subversion-perl}.each do |pkg|
  package pkg do
    action :install
  end
end

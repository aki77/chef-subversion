default['subversion']['wandisco']['key'] = "RPM-GPG-KEY-WANdisco"
default['subversion']['wandisco']['key_url'] = "http://staging.opensource.wandisco.com/#{node['subversion']['wandisco']['key']}"

if node['platform_version'].to_i >= 6
  default['subversion']['wandisco']['url'] = "http://staging.opensource.wandisco.com/rhel/6/svn-1.7/RPMS/#{node['kernel']['machine']}/"
else
  default['subversion']['wandisco']['url'] = "http://opensource.wandisco.com/centos/5/devel/RPMS/$basearch/"
end

#
# Cookbook Name:: newrelic
# Attributes:: repository
#
# Copyright (c) 2016, David Joos
#

default['newrelic']['repository']['key'] = 'http://download.newrelic.com/548C16BF.gpg'

case node['platform_family']
when 'debian'
  default['newrelic']['repository']['uri'] = 'http://download.newrelic.com/debian/'
  default['newrelic']['repository']['distribution'] = 'newrelic'
  default['newrelic']['repository']['components'] = ['non-free']
when 'rhel', 'fedora'
  default['newrelic']['repository']['uri'] = 'http://download.newrelic.com/pub/newrelic/el5/$basearch/'
end

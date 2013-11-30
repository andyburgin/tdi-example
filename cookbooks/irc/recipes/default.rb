#
# Cookbook Name:: irc
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

package "irssi" do
	action:install
end

directory "/home/tdi/.irssi" do
	owner "tdi"
	action:create
end

cookbook_file "config" do
	path "/home/tdi/.irssi/config"
	action:create_if_missing
	owner "tdi"
end

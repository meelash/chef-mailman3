#
# Cookbook:: mailman3-core
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.

include_recipe 'build-essential'

# Install base packages for mailman3
%w{
  bzr
  postfix
  ssl-cert
  lynx
  python3-dev
  python3-venv
  python3-pip
  python3-django
  ruby-sass
  }.each do |pkg|
    package pkg
  end

  directory '/opt/mailman' do
    owner 'root'
    group 'root'
    mode  '0755'
  end

  bash 'Install mailman core' do
    cwd '/opt/mailman'
    code <<-EOH
      python3 -m venv venv
      source venv/bin/activate
      pip install mailman
      touch /etc/mailman.cfg
      mailman info
    EOH
  end
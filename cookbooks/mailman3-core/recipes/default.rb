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
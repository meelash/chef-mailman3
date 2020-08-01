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
  python3-venv
  python3-pip
  python3-django
  }.each do |pkg|
    package pkg
  end
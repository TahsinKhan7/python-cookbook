#
# Cookbook:: python_cookbook
# Spec:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.

require 'spec_helper'

describe 'python_cookbook::default' do
  context 'When all attributes are default, on Ubuntu 16.04' do
    # for a complete list of available platforms and versions see:
    # https://github.com/chefspec/fauxhai/blob/master/PLATFORMS.md
    platform 'ubuntu', '16.04'
    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end
    it 'if apt update successful' do
      expect(chef_run).to update_apt_update 'update'
    end
    it 'if python installed' do
      expect(chef_run).to install_package('python')
    end
    it 'if python updated successfully' do
      expect(chef_run).to upgrade_package ('python')
    end
    it 'if python pip has installed' do
      expect(chef_run).to install_package('python-pip')
    end
    it 'if python pip has been updated' do
      expect(chef_run).to upgrade_package('python-pip')
    end
    it 'if a template folder with requirments.txt file has been created correctly'
      expect(chef_run).to create_template("/etc/python/requirements.txt")
    end
    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end
    at_exit { ChefSpec::Converge.report! }
    end
  end
end

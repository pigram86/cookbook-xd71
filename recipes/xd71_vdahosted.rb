#
# Cookbook Name:: xd71
# Recipe:: xd71_vdahosted
#
# Copyright (C) 2014 Todd Pigram
# 
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# 
#    http://www.apache.org/licenses/LICENSE-2.0
# 
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
windows_zipfile "c:/" do
  source node['xd7']['url']
  action :unzip
  not_if {::File.exists?(node['xd7']['dir'])}
end


windows_batch "XD7 VDAHosted" do
  code <<-EOH
  c:\\XenDesktop7_1\\x64\\XenDesktopSetup\\XenDesktopVdaSetup.exe /quiet /controllers "da-xddc01.daas.local" /enable_hdx_ports /optimize /enable_remote_assistance
  EOH
  not_if {::File.exists?(node['vda']['dir'])}
  not_if {reboot_pending?}
end

# if feature installs, schedule a reboot at end of chef run
windows_reboot 60 do
  reason 'cause chef said so'
  only_if {reboot_pending?}
end 
  
#
# Cookbook Name:: xd7_ctrl
# Recipe:: default
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

default['xd7']['url'] = "https://dl.dropboxusercontent.com/u/36379525/XD71.zip"
default['xd7']['dir'] = "c:/XenDesktop7_1"
default['ctrl']['srv'] = "C:/Program Files/Citrix/Broker/Service/BrokerService.exe"
default['director']['dir'] = "C:/inetpub/wwwroot/Director"
default['licsrv']['dir'] = "C:/Program Files (x86)/Citrix/Licensing"
default['stfr']['dir'] = "C:/inetpub/wwwroot/Citrix/StoreWeb"
default['studio']['dir'] = "C:/Program Files/Citrix/Desktop Studio"
default['vda']['dir'] = "C:/Program Files/Citrix/Virtual Desktop Agent"
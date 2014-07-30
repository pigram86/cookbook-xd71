# xd71-cookbook

Cookbook that install the components required to run a XenDesktop 7.1 environment

## Supported Platforms

Windows 2008R2
Windows 2012
Windows 2012R2
Windows 7
Windows 8/8.1

## Attributes

default['xd7']['url'] = "https://dl.dropboxusercontent.com/u/36379525/XD71.zip"
default['xd7']['dir'] = "c:/XenDesktop7_1"
default['ctrl']['srv'] = "C:/Program Files/Citrix/Broker/Service/BrokerService.exe"
default['director']['dir'] = "C:/inetpub/wwwroot/Director"
default['licsrv']['dir'] = "C:/Program Files (x86)/Citrix/Licensing"
default['stfr']['dir'] = "C:/inetpub/wwwroot/Citrix/StoreWeb"
default['studio']['dir'] = "C:/Program Files/Citrix/Desktop Studio"
default['vda']['dir'] = "C:/Program Files/Citrix/Virtual Desktop Agent"

## Usage
xd71:xd71_allinone - install all infrastructure components on one server
xd71:xd71_crtl - install the Controller with SQL Express
xd71:xd71_crtl_nosql - Installs the Controller without SQL Express
xd71:xd71_director - Installs the Director Component
xd71:xd71_license - Installs the License Server Component
xd71:xd71_storefront - Installs the Storefront Component
xd71:xd71_studio - Installs the Studio Component
xd71:xd71_vdahosted - Installs the Delivery agent on Session Host




## Contributing

1. Fork the repository on Github
2. Create a named feature branch (i.e. `add-new-recipe`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request

## License and Authors

Author:: Todd Pigram (todd@toddpigram.com)

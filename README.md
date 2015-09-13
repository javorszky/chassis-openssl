# chassis-openssl
openSSL module as extension for chassis.io

## Usage

1. Clone this into the `extensions` folder of your Chassis installation.
1. Run `vagrant reload --provision` or just `vagrant up`
1. Profit.

## Caveats and known problems:

1. I haven't tested with multisite. It probably doesn't work as the nginx file is going to be different.
1. Nginx configuration is brittle. It assumes that the `root` is going to be `/vagrant`. I haven't figured out how to add extra config options to existing templates / templates not living in my modules, OR how to add config files to nginx that fall back to other info.
1. You'll have to add the `.cert` file in the root directory of Chassis to your keychain and set it to "Always trust" to avoid the red "your connection is not encrypted" message

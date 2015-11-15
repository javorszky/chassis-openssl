# chassis-openssl
openSSL module as extension for chassis.io. See https://github.com/Chassis/Chassis and http://docs.chassis.io/en/latest/ for a lot more info.

## Usage

1. Clone this into the `extensions` folder of your Chassis installation. Use recursive: `git clone --recursive https://github.com/javorszky/chassis-openssl.git` to get the submodule pulled in as well.
1. Run `vagrant reload --provision` or just `vagrant up`
1. Profit.

## Caveats and known problems:

1. I haven't tested with multisite.
1. You'll have to add the `.cert` file in the root directory of Chassis to your keychain and set it to "Always trust" to avoid the red "your connection is not encrypted" message. Don't know how to do it on a Windows machine. Let me know :)

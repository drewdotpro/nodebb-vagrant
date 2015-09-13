NodeBB Vagrant
===================

A vagrant box running Ubuntu 14.04 with Redis and NodeBB

Installation
-------------
You need Vagrant and VirtualBox installed to use vagrant.

Clone the repo and start the vagrant up:
```
git clone https://github.com/drewdotpro/nodebb-vagrant.git
cd nodebb-vagrant
vagrant up
```

Once provisioned you can access the vagrant box:
```
vagrant ssh
```
Then move to the NodeBB folder and start the web installer:
```
cd /var/nodebb
./nodebb start
```
 Then navigate to http://localhost:4567

or if you want to setup from command line:
```
cd /var/nodebb
./nodebb setup
```
Once setup you can access your vagrant installation of NodeBB in a browser at:
http://localhost:4567

Enjoy!

DrewDotPro
### Install Ruby on Ubuntu
- Using RVM
```sh
# verify something
gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
# install prerequisite
sudo apt-get install software-properties-common
# add remote repo
sudo apt-add-repository -y ppa:rael-gc/rvm
sudo apt-get update
sudo apt-get install rvm
echo 'source "/etc/profile.d/rvm.sh"' >> ~/.zshrc # or ~/.bashrc
# reboot the machine here
rvm install ruby-2.6 # install ruby here
ruby -v # test install
```

### Where to find lib?
- [Ruby Gems](https://rubygems.org/)

### VScode extensions
- Ruby
- Ruby Solargraph
- VScode Ruby
- Rufo - Ruby formatter
- Auto Add Brackets in String Interpolation

### Manage Credentials
- [GA](https://www.rubyguides.com/2019/01/ruby-environment-variables/)

### Reference
- [Install RVM on Ubuntu](https://github.com/rvm/ubuntu_rvm)
## Install Ruby on Rails
### Step 1: Install Rvm
- Verify
```sh
# you need to brew install gpg on Mac
curl -sSL https://rvm.io/mpapis.asc | gpg --import -
```
- Install RVM on [Mac](https://rvm.io/)
```sh
curl -sSL https://get.rvm.io | bash -s stable --ruby
```
- Install RVM on [Ubuntu](https://rvm.io/rvm/install#ubuntu)
```sh
# Install
sudo apt-get install software-properties-common
sudo apt-add-repository -y ppa:rael-gc/rvm
sudo apt-get update
sudo apt-get install rvm
echo 'source "/etc/profile.d/rvm.sh"' >> ~/.zshrc # or ~/.bashrc
```
### Step 2: Install Ruby
```sh
# Reboot before installing
rvm install ruby-2.6
ruby -v
```

### Step 3: Install Rails
```sh
gem install rails -v "~>5.2"
```

## Uninstall Ruby on Rails
### Uninstall Rails
```sh
gem uninstall rails
gem uninstall railties
```
### Uninstall Ruby
```sh
rvm reinstall ruby-2.7.0
```
### Uninstall Rvm
```sh
rvm implode
rm -rf ~/.rvm
# check
# ~/.bashrc
# ~/.bash_profile
# ~/.profile
```


## Reference
- [ruby基础教程](https://www.kancloud.cn/imxieke/ruby-base/107295)
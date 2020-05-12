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

### Install Ruby on Mac
- Using brew
```sh
brew install ruby
export PATH="/usr/local/opt/ruby/bin:$PATH"
export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"
```
- Using RVM
  - GPG
    - Install GPG: `brew install gpg`
    - Config [GPG](https://rvm.io/rvm/security#install-our-keys): `gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB` 
  - RVM & GEM
    - Install [RVM](https://rvm.io/): `curl -sSL https://get.rvm.io | bash -s stable --rails` then test using `rvm help`
    - Update GEM: `gem update --system` & `gem update`
    - Inspect GEM: `rvm gemset list`
    - Global GEM: `rvm gemset use global` || `rvm @global do gem install jist`
    - Necessary GEM: 
      - `gem install bundler`: bundle install gem defined in gemfile
      - `gem install nokogiri`: common but powerful library
  - Rails
    - Install `gem install rails`

### Where to find lib?
- [Ruby Gems](https://rubygems.org/)

### VScode extensions
- Ruby
- Ruby Solargraph
- VScode Ruby
- Rufo - Ruby formatter
- Auto Add Brackets in String Interpolation

### Common Commands
- interactive mode
```sh
irb # get into interactive mode
```
- methods
```ruby
"123".length # return 3
"xxx".upcase # return XXX
"XXX".downcase # return xxx
"1".to_i # return integer as 1
"abc".inspect # equal to p "abc"
1.odd? # check the integer is odd or not
1.even? # check the integer i even or not
1.next # return 2
1.class # got the blueprint of a variable

gets # get user input
gets.chomp # get user input and remove space in both sides
[1,2,3].is_a? Array # class check, support superclass check
```

### Wired === 
- Different implementation with different class
```ruby
p (1..3) === 2 # 2 is in range (1..3)
```

### Code Reuse
- When you finish a complex code, try to `extract` it to a `simple name`
- When you finish a complex code, try to make it more `flexible` by passing `variables` and `lambda functions` (or Proc)


### Manage Credentials
- [GA](https://www.rubyguides.com/2019/01/ruby-environment-variables/)

### Reference
- [Install RVM on Ubuntu](https://github.com/rvm/ubuntu_rvm)



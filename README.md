# My bats files

- This is a list of [bats](https://github.com/sstephenson/bats) files to act as a simple replacement to bloated [opscode/chef](https://github.com/opscode/chef) & co
- each one is used to install an app or a group of apps (for headless use)

# Usage 

```sh
# install all files in folder
bats bats 

# install just one app
bats bats/ruby.bats
```

# Todo
- use non OS dependent calls
- actually use tests before launching stuff

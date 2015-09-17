[![Build Status](https://scrutinizer-ci.com/g/lcfumes/capistrano-deploy/badges/build.png?b=master)](https://scrutinizer-ci.com/g/lcfumes/capistrano-deploy/build-status/master)

# capistrano-deploy #

## You must add your public key in webservers ##

See more about:
```
$ ssh-keygen
```

Use Capstrano to deploy Git projects

## Files configurations ##

### config/deploy.db ###

Yout git name project.
Example: capistrano-deploy

```
set :application, 'capistrano-deploy'
```

Your git project
```
set :repo_url, 'git@github.com:lcfumes/capistrano-deploy.git'
```

The folder destiny in your server
```
set :deploy_to, '/srv/destiny_folder'
```

### config/deploy/production.rb ###

Url of your live server and user name to deploy

You can put more than one server
```
server 'server.com.br', user: 'web', roles: %w{app}
```

### config/deploy/staging.rb ###

Url of your staging server and user name to deploy

You can put more than one server
```
server 'server.com.br', user: 'web', roles: %w{app}
```

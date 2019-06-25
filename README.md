# railsgirlsla-signup

### Contributors
+ Jen Diamond @jendiamond
+ Daniel Uribe @fancydaniel
+ Kenneth Lee @kennethlee

### Deployment:
https://dashboard.heroku.com/apps/railsgirlsla-signup/deploy/heroku-git

+ $ `heroku git:remote -a railsgirlsla-signup`
+ $ `git remote -v`
```
heroku	https://git.heroku.com/railsgirlsla-signup.git (fetch)
heroku	https://git.heroku.com/railsgirlsla-signup.git (push)
origin	git@github.com:jendiamond/railsgirlsla-signup.git (fetch
```

---

+ Ruby version - 2.5.5
+ Bundler version - 2 (https://devcenter.heroku.com/articles/bundler-version)


* System dependencies

* Configuration

* Database creation

* Database initialization

### How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

---

### Naming conventions
#### Commit messages
When this commit is merged it will...

#### Branches 
Issue number and what the issue will do  
ie:  Issue # 7 Add Devise Gem would be...  
$ `git chekout -b 7_add-devise-gem`

#### PR Messages
Good example: https://github.com/jendiamond/railsgirlsla-signup/pull/22
```
Connected to #issue-number

+ bulleted list
+ of what was done

screenshot of what changed (if applicable)

---

### Changes to be commited:
+ modified: README.md
+ modified: config/routes.rb
+ modified: app/controllers/static_controller.rb
+ new: app/views/static/faq.html.erb
+ new: Gemfile.lock
```

---
---

## To work on the project


## Requirements

- docker (https://www.docker.com/community-edition#/download)
- docker-compose (https://docs.docker.com/compose/install/)

## Build the project

```
$ docker-compose run web rails new . --force --database=mysql --skip-bundle

$ docker-compose build
```

## Connect the database

Replace the contents of config/database.yml with the following:

```
default: &default
  adapter: mysql2
  encoding: utf8
  pool: <%= ENV.fetch("RAILS_MAX_THREADS") { 5 } %>
  username: root
  password: rails
  host: db

test:
  <<: *default
  database: rails_test

```

You can now boot the app with:

```
docker-compose up
```
Finally, you need to create the database. In another terminal, run:

```
docker-compose run web rake db:create
```

That’s it. Your app should now be running on port 3000 on your Docker daemon

## Troubleshooting

### Error loading the 'mysql2' Active Record adapter

1. Make sure you have MySQL installed on your machine. On Mac/Homebrew, use `brew install mysql`.
2. Run `rake db:create` and/or `rake db:migrate`
3. Start up the MySQL server by running `mysql.server start` in the terminal

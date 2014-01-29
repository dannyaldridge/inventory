Inventory application
=====================

Postgres
========

PostgreSQL is used instead of sqlite3 as [recommended by Heroku](https://devcenter.heroku.com/articles/getting-started-with-rails3#write-your-app).

Installation
------------

To install PostgreSQL, visit: http://www.postgresql.org/download/.

Databases
---------

To recreate your test and development databases after switching to Postgres, ensure Postgres is running on your machine and run:

```
rake db:create
rake db:migrate
```

for development, and:

```
RAILS_ENV=test rake db:create
RAILS_ENV=test rake db:migrate
```

for the test environment.

Unicorn
=======

To test the [Unicorn](http://unicorn.bogomips.org/) server, you need to start the server through the Procfile.

Once you've installed the [Heroku Toolbelt](https://toolbelt.heroku.com/), you can use [Foreman](https://github.com/ddollar/foreman) to start the server locally by running:

```
foreman start
```

Note that this will start the server on port 5000 by default.


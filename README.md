# New Rails Skeleton App

[![Code Climate](https://codeclimate.com/github/djlebersilvestre/new_rails/badges/gpa.svg)](https://codeclimate.com/github/djlebersilvestre/new_rails)
[![Test Coverage](https://codeclimate.com/github/djlebersilvestre/new_rails/badges/coverage.svg)](https://codeclimate.com/github/djlebersilvestre/new_rails/coverage)
[![Issue Count](https://codeclimate.com/github/djlebersilvestre/new_rails/badges/issue_count.svg)](https://codeclimate.com/github/djlebersilvestre/new_rails)
[![Dependency Status](https://gemnasium.com/djlebersilvestre/new_rails.png)](https://gemnasium.com/djlebersilvestre/new_rails)

This is a base rails project with some dependencies installed and configured to ease the development and speed up the bootstrap.
The idea is to have a skeleton for new projects and keep the tech stack up to date.

To start using just jump into project's root directory and run the command below in your terminal:
```bash
./setup.sh
```
This should take care of all dependencies for you ;)

## Cool things by using this base project (and reasons why):

* Rails 5: because we want new stuff
* RVM: because we like to switch between projects without worrying with rubies and gems
* Minitest: just an option for test suite, and we love to test
* Rubocop: because we like to follow community standards and share good code with other devs
* Rubocop run on commit: because we don't want to push bad code to the repo (and we don't want to run manually before every commit)
* Guard: because we want immediate feedback about our code changes (tests failing? rubocop failing? coverage low? brakeman warnings?)
* JsonRestController: because we like to DRY our json controllers and keep a standard for json APIs
* Foo examples: because we have bad memory and having some sample code help us remember a lot of things (nested resources, migrations, indexes, validations, test helpers, ...)
* Awesome-print: because we are happy when it's easy to read an indented hash on console
* Finally, to keep improving and tunning our Rails projects adopting and creating best practices and stop wasting time redoing things. GTD fast and KISS \o/

## TODOs so we don't lose track of our short-term goals:

* Testing Json error responses
* Review heartcheck for standard HTTP monitoring
* General exception handler in ApplicationController. Same for JsonRestController
* ActiveJob Foo example
* Tableless Foo example
* Log solution detached from the code. Something configurable (think about Sonnet's challenge)
* Add pagination and rate limit to the API - maybe review the concept and move to GraphQL at once
* Same Log idea but applied to low-level caching - AOP?
* Explore more code climate
* More details / howto regarding each cool thing listed
* Setup devise with declarative authorization (or similar)
* Setup base Angular 2 front-end
* Ransack or other filtering gems
* Minitest reporter using awesome print when we have failures (comparing hashes should be painless)
* Tunning: cache for rails to reduce DB hitting and other caching strategies - nice article: https://www.speedshop.co/2015/07/15/the-complete-guide-to-rails-caching.html
* Use AMS to take cache advantage
* Use memcached / redis in production for caching
* Update "Things you may want to cover"
* Rails txt logger using something like lograge in prod and other non local envs
* Review stale? usage to incorporate in JsonRestController and improve performance with automated caching strategy
* Check API version for Rails 5 and create another base project API focused - good articles: https://blog.codeship.com/building-a-json-api-with-rails-5/ | https://blog.codeship.com/building-a-json-api-with-rails-5/
* Dive deeper in rack-mini-profiler
* Regenerate secrets configs for each new project - replace new_rails by the project name, maybe use thor
* Create docker files and images

Things you may want to cover:

* Ruby version
* System dependencies
* Configuration
* Database creation
* Database initialization
* How to run the test suite
* Services (job queues, cache servers, search engines, etc.)
* Deployment instructions
* ...

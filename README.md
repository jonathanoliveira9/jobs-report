# Jobs Report
This application is to learning about jobs with redis sidekiq

## Requirements

The requirements to run this project include:
* ruby 2.7.0p0

## Installation

```bash
Install Redis

$ sudo apt install redis-server
$ sudo redis-server

Just clone the repository, install the bundle and run the migrations. After that, are you free to do anything.
$ git clone git@github.com:jonathanoliveira9/jobs-report.git
$ rails db:create
$ rails db:migrate
$ rails s

To start sidekiq
$ bundle exec sidekiq -q reports

FROM ruby:2.5
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /rails-postgresql-app
WORKDIR /rails-postgresql-app
COPY Gemfile /rails-postgresql-app/Gemfile
COPY Gemfile.lock /rails-postgresql-app/Gemfile.lock
RUN bundle install
COPY . /rails-postgresql-app
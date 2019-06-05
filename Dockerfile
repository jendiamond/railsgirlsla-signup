FROM ruby:2.5.5
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /railsgirlsla-signup
WORKDIR /railsgirlsla-signup
ADD Gemfile /railsgirlsla-signup/Gemfile
ADD Gemfile.lock /railsgirlsla-signup/Gemfile.lock
RUN bundle install
ADD . /railsgirlsla-signup

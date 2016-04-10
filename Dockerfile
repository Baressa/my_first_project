FROM ruby:2.3.0

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev

ENV APP_HOME /web
RUN mkdir $APP_HOME
WORKDIR $APP_HOME

ADD Gemfile* $APP_HOME/
COPY Gemfile Gemfile
COPY Gemfile.lock Gemfile.lock
RUN gem install bundler

RUN bundle install

ADD . $APP_HOME

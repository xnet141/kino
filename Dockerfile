FROM ruby:3.1.3

RUN apt-get update -y && apt-get install build-essential libpq-dev nodejs -y

RUN mkdir /app

WORKDIR /app

ADD Gemfile /app/Gemfile
ADD Gemfile.lock /app/Gemfile.lock

RUN bundle install

ADD . /app
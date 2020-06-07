FROM ruby:2.7.1-alpine

RUN apk add --update build-base\
  mysql \
  nodejs \
  tzdata \
  git \
  mysql-client \
  && rm -rf /var/cache/apk/*

WORKDIR /usr/local/web
RUN gem install rails
COPY Gemfile Gemfile
COPY Gemfile.lock Gemfile.lock
RUN bundle install
COPY . .
ENV RAILS_ENV development
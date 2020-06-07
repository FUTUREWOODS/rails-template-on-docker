FROM ruby:2.7.1-alpine

RUN apk add --update build-base \
      mysql-dev \
      nodejs \
      yarn \
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

COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
EXPOSE 3000

ENV RAILS_ENV development
# CMD ["rails", "server", "-b", "0.0.0.0"]
FROM ruby:2.4.1

COPY Gemfile* $APP_PATH/
RUN bundle install

COPY . /usr/src
WORKDIR /usr/src

ENV RAILS_ENV development

FROM ruby:3.0

WORKDIR /usr/src/app

COPY Gemfile Gemfile.lock ./

RUN bundle lock --add-platform ruby
RUN bundle lock --add-platform x86_64-linux

RUN bundle install

COPY . .

FROM ruby:3.0

<<<<<<< HEAD
WORKDIR /usr/src/app

COPY Gemfile Gemfile.lock ./

RUN bundle lock --add-platform ruby
RUN bundle lock --add-platform x86_64-linux

RUN bundle install

COPY . .
=======
# throw errors if Gemfile has been modified since Gemfile.lock
RUN bundle config --global frozen 1

WORKDIR /usr/src/app

COPY Gemfile Gemfile.lock ./
RUN bundle install

COPY . .
>>>>>>> change dockerfile settings

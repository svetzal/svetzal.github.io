FROM ruby:latest

RUN mkdir /site

WORKDIR /tmp
COPY Gemfile Gemfile
COPY Gemfile.lock Gemfile.lock
RUN bundle install

ADD . /site
WORKDIR /site

EXPOSE 4000/tcp
# RUN bundle exec jekyll server

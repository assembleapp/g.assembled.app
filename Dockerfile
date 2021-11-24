FROM ruby:2.3.1

WORKDIR /app
ADD Gemfile* /app/
RUN bundle install

CMD bundle exec ruby server.rb

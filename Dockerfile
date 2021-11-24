FROM ruby:3.0.2

WORKDIR /app
ADD Gemfile* /app/
# RUN gem install bundler -v 2.2.32
RUN bundle install
ADD . /app

CMD bundle exec ruby server.rb

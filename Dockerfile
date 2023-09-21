FROM ruby:3.0.2


# Install rails
RUN gem install rails bundler
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client

WORKDIR /devop-test

COPY Gemfile Gemfile.lock ./
RUN bundle install

COPY . .

EXPOSE 3000

CMD ["rails", "server", "--binding", "0.0.0.0"]
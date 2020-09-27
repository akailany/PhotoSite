# Base image
FROM ruby:latest

ENV HOME /Users/atiyakailany/Programs/csueastbay/websystems/PhotoSite


WORKDIR $HOME

# Install gems
ADD Gemfile* $HOME/
RUN bundle install

# Install PGsql dependencies and js engine
RUN apt-get update -qq && apt-get install -y sqlite3 libsqlite3-dev
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update -qq && apt-get install -y yarn
RUN yarn install


# Add the app code
ADD . $HOME

EXPOSE 3000

# Default command
CMD ["rails", "server", "-b", "0.0.0.0"]


# syntax=docker/dockerfile:1
FROM ruby:2.7.6

RUN curl -fsSL https://deb.nodesource.com/setup_18.x | bash -
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client

RUN npm install -g yarn 

WORKDIR /myapp

COPY package.json /myapp/package.json
COPY yarn.lock /myapp/yarn.lock

COPY Gemfile /myapp/Gemfile
COPY Gemfile.lock /myapp/Gemfile.lock

RUN bundle install
RUN yarn install

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

# Configure the main process to run when running the image
# CMD ["rails", "server", "-b", "0.0.0.0"]
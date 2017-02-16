FROM ruby:2.3.3

# install necessary packages
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs npm --no-install-recommends

# remove caches
RUN rm -rf /var/lib/apt/lists/*

# node
RUN npm cache clean
RUN npm install n -g
RUN n stable
RUN apt-get purge -y nodejs npm # remove old nodes

ENV INSTALL_PATH /app
ENV LANG C.UTF-8
RUN mkdir $INSTALL_PATH
WORKDIR $INSTALL_PATH
COPY Gemfile ./
COPY Gemfile.lock ./
RUN bundle install
COPY package.json ./
RUN npm install

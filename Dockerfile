FROM ruby:2.3.3
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs --no-install-recommends && rm -rf /var/lib/apt/lists/*
ENV INSTALL_PATH /app
ENV LANG C.UTF-8
RUN mkdir $INSTALL_PATH
WORKDIR $INSTALL_PATH
COPY Gemfile ./
COPY Gemfile.lock ./
RUN bundle install

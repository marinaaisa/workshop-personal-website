FROM ruby:2.4.2
MAINTAINER https://github.com/linkita/

RUN apt-get update -qq && apt-get install -y build-essential

# for postgres
RUN apt-get install -y libpq-dev

# for nokogiri
RUN apt-get install -y libxml2-dev libxslt1-dev

# for capybara-webkit
RUN apt-get install -y libqt4-webkit libqt4-dev xvfb

# for node
RUN apt-get install -y python python-dev python-pip python-virtualenv

# cleanup
RUN rm -rf /var/lib/apt/lists/*

# install nodejs
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash -
RUN apt-get install -y nodejs

WORKDIR /app
COPY . /app

RUN gem install middleman

RUN gem install bundler

RUN bundle install

EXPOSE 4567

RUN npm install 

ENV RUBYOPT="-KU -E utf-8:utf-8"
CMD ["bash"]



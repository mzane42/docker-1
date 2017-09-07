FROM ruby:2.4
RUN apt update && apt install -y nodejs
WORKDIR /opt/app/ft-rails
COPY . /opt/app/ft-rails
RUN bundle install && rake db:create db:migrate db:seed
EXPOSE 3000

FROM ruby:2.2
RUN rm /etc/apt/sources.list && echo 'deb http://us.archive.ubuntu.com/ubuntu/ xenial main restricted' >/etc/apt/sources.list && apt-get update --force-yes -qq && apt-get install --force-yes -y build-essential

ENV APP_HOME /app
RUN mkdir $APP_HOME

WORKDIR $APP_HOME
ADD Gemfile* $APP_HOME/
RUN bundle install
ADD . $APP_HOME

ENV POST_SERVICE_HOST post
ENV POST_SERVICE_PORT 5000
ENV COMMENT_SERVICE_HOST comment
ENV COMMENT_SERVICE_PORT 9292

CMD ["puma"]


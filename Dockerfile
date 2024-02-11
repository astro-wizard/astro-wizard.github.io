FROM ruby:2.7

WORKDIR /home/app

COPY Gemfile* ./

RUN bundle install

COPY ../../Downloads/resume-template-gh-pages .

CMD [ "bundle", "exec", "jekyll", "serve" ]
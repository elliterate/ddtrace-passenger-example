FROM phusion/passenger-ruby31

WORKDIR /app

COPY Gemfile Gemfile.lock ./

RUN gem install bundler -v "$(grep -A 1 'BUNDLED WITH' | tail -1 | xargs echo)" \
    && bundle install

COPY . ./

EXPOSE 3000

CMD ["passenger", "start"]

FROM ruby:3.3.0

ENV RAILS_ENV=development \
    BUNDLE_APP_CONFIG=/usr/local/bundle

RUN apt-get update -qq && \
    apt-get install -y --no-install-recommends \
      build-essential \
      nodejs \
      postgresql-client && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY Gemfile Gemfile.lock ./
RUN bundle install

COPY . .

EXPOSE 3000

CMD ["bin/rails", "server", "-b", "0.0.0.0", "-p", "3000"]


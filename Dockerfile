FROM ruby:3.3.6

ENV RAILS_ENV=production \
    BUNDLE_APP_CONFIG=/usr/local/bundle \
    BUNDLE_WITHOUT=development:test \
    RAILS_LOG_TO_STDOUT=true \
    RAILS_SERVE_STATIC_FILES=true

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

EXPOSE 8000

CMD ["bin/rails", "server", "-b", "0.0.0.0", "-p", "8000"]


FROM ruby:2.5

# Configure locals
ENV LANG C.UTF-8
# Set app name
ENV APP_ROOT /myapp

# For essential
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash && \
    apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    libpq-dev \
    gcc \
    g++ \
    make \
    nodejs \
    vim \
    wget \
 && rm -rf /var/lib/apt/lists/*


RUN mkdir -p ${APP_ROOT}

# Configure the main working directory. This is the base
# directory used in any further RUN, COPY, and ENTRYPOINT
# commands.
WORKDIR ${APP_ROOT}

# Add the Gemfile as well as the Gemfile.lock
# Add the package.json as well as the package.lock.json
COPY Gemfile* ${APP_ROOT}/

# Install RubyGems and NodeModules
RUN bundle install -j "$(getconf _NPROCESSORS_ONLN)" --retry 5 && npm install

COPY . ${APP_ROOT}

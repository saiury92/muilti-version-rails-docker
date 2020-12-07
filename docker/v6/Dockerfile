FROM ruby:2.7.1

# Install apt based dependencies required to run Rails as
# well as RubyGems. As the Ruby image itself is based on a
# Debian image, we use apt-get to install those.
RUN apt-get update && apt-get install -y \
  build-essential \
  nodejs

# Configure the main working directory. This is the base
# directory used in any further RUN, COPY, and ENTRYPOINT
# commands.
RUN mkdir -p /projects/v6

# Copy the main application.
#COPY rails_app /app
WORKDIR /projects/v6

#Install the gems specified by the Gemfile or Gemfile.lock
#RUN bundle install

# Expose port 3000 to the Docker host, so we can access it
# from the outside.
EXPOSE 3000
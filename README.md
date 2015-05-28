# Middleman::Dokku

Simple rake task for generating files needed to host a static middleman site in
a dokku container. It uses a modified version of rack TryStatic and Puma for
running the site. Dokku will automatically detect and use the [Heroku Ruby
Buildpack](https://github.com/heroku/heroku-buildpack-ruby)

## Installation

### Step 1: Add this line to your application's Gemfile:

```ruby
gem 'middleman-dokku'
```

And then execute:

    $ bundle

### Step 2: Require gem in your Rakefile and add asset compilation tasks

```ruby
require 'middleman/dokku'

namespace :assets do
  task :precompile do
    sh 'middleman build'
  end
end
```

## Usage

Run the provided rake command

```bash
rake mm:dokku:generate
```

This will generate a Procfile and a config.ru. Commit those files and deploy to
Dokku.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release` to create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

1. Fork it ( https://github.com/[my-github-username]/middleman-dokku/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

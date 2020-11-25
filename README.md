# Shop

A Rails app built with TDD.

## Installation

Versioning

Ruby 2.7.2p & Rails 6.0.3.4

- Clone this repo
- run `bundle install`

## Configuration details

`rspec-rails` - test suite
`faker` - dynamic data for testing
`factory_bot_rails` - factories for simpler test setup
`capybara` - tools for feature testing ("drives" the screen)
`launchy` - has a cool snippet, `save_and_open_page`
`simplecov` - track test coverage
`pry` - powerful, interactive debugger

## Setup (Notes)

1. Add the above gems to a `:development, :test` group in the Gemfile. Get rid of byebug.
1. Install and set up RSpec from the command line.

```
rails g rspec:install
```

3. Configure Simplecov by adding this snippet to the very top of `rails_helper`

```
require 'simplecov'
SimpleCov.start
```

4. Set up FactoryBot by creating `spec/support/factory_bot.rb` and then requiring that file in `rails_helper.rb`.

```
# spec/support/factory_bot.rb

RSpec.configure do |config|
  config.include FactoryBot::Syntax::Methods
end
```

[FactoryBot documentation](https://github.com/thoughtbot/factory_bot/blob/master/GETTING_STARTED.md#configure-your-test-suite)

5. Configure Capybara by adding this to `spec_helper.rb` -> `require 'capybara/rspec'`

Examples of how to write tests - [Using Capybara with RSpec](https://github.com/teamcapybara/capybara#using-capybara-with-rspec)

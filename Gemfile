# frozen_string_literal: true

source 'https://rubygems.org'

# NOTE: git プロトコルではなく HTTPS で通信するためのコード
# Bundle >~ 2.0 で下記を書かなくても良くなる
git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

gem 'bcrypt', '~> 3.1.7'
gem 'puma', '~> 3.0'
gem 'rails', '~> 5.0.2'
gem 'mysql2'

group :development, :test do
  gem 'byebug', platform: :mri
end

group :development do
  gem 'listen', '~> 3.0.5'
  gem 'pry-rails'
  gem 'rubocop', require: false
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

ruby '2.3.0'

source 'https://rubygems.org' do
  gem 'rails', '4.2.3'
  gem 'pg'
  gem 'activerecord'

  # Assets
  gem "bower-rails", "~> 0.10.0"
  gem 'google-webfonts-rails'

  # Pagination
  gem 'kaminari', '0.14.1'
  gem 'bootstrap-kaminari-views'

  # mapping
  gem 'leaflet-rails'
  gem 'geocoder'

  # Social media
  gem 'yt', '~> 0.25.5'
  # gem "socialization"
  gem 'twitter'

  gem 'rest-client'

  gem 'rails_autolink'
  gem "font-awesome-rails"

  gem 'sidekiq'
  gem 'sidekiq-unique-jobs'

  # AR Extensions
  gem 'activerecord-postgres-earthdistance'
  gem 'elasticsearch-model'
  gem 'elasticsearch-rails'

  gem "figaro"
  gem "high_voltage"

  gem 'redcarpet'
  gem 'haml-rails'
  gem 'turbolinks'
  gem 'simple_form'

  gem 'devise'

  gem 'sass-rails', '~> 5.0'
  gem 'uglifier', '>= 1.3.0'
  gem 'coffee-rails', '~> 4.1.0'
  gem 'jquery-rails'
  gem 'jbuilder', '~> 2.0'

  gem 'newrelic_rpm'

  gem 'dalli'

  # gem 'link_thumbnailer'
  gem 'acts-as-taggable-on', '~> 3.4'
  gem 'jquery-minicolors-rails'

  group :development do
    gem 'better_errors'
    gem 'foreman'
    gem 'html2haml'
    gem 'quiet_assets'
    gem 'rails_layout'

    # Auto test
    gem 'guard-rspec', require: false
    gem 'guard-bundler', require: false

  end
  group :development, :test do
    gem 'byebug'
    gem 'web-console', '~> 2.0'
    gem 'spring'

    gem 'pry-rails'
    gem 'pry-rescue'
    gem "rspec-rails"
    gem "factory_girl_rails"
    gem "database_cleaner"
  end

  group :production, :staging do
    gem 'puma'

    gem "rails_12factor"
    gem "rails_stdout_logging"
  end

end

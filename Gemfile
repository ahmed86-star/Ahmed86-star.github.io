# frozen_string_literal: true

source "https://rubygems.org"

gem "jekyll", "~> 4.3.3"
gem "jekyll-theme-chirpy", "~> 6.4.2"
gem "webrick", "~> 1.8"

group :jekyll_plugins do
  gem "jekyll-archives", "~> 2.2"
  gem "jekyll-sitemap", "~> 1.4"
  gem "jekyll-paginate", "~> 1.1"
  gem "jekyll-redirect-from", "~> 0.16"
  gem "jekyll-seo-tag", "~> 2.8"
end

gem "html-proofer", "~> 5.0", group: :test

platforms :mingw, :x64_mingw, :mswin, :jruby do
  gem "tzinfo", ">= 1", "< 3"
  gem "tzinfo-data"
end

gem "wdm", "~> 0.2.0", :platforms => [:mingw, :x64_mingw, :mswin]

gem "csv"
gem "base64"

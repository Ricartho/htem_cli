#contain all the relations between files
require 'bundler/setup'
Bundler.require(:default)
require_relative "./htem_cli/version"
#require_relative "./htem_cli/cli"
require_relative "./htem_cli/scraper"
require_relative "./htem_cli/article"

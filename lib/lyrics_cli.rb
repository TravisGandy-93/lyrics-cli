#application environment

require 'bundler/setup'
Bundler.require(:default)

require_relative './lyrics_cli/cli.rb'
require_relative './lyrics_cli/api.rb'
require_relative './lyrics_cli/lyrics.rb'
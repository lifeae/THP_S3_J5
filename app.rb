require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../", __FILE__)
require 'lib/controller.rb'
require 'lib/gossip.rb'
require 'lib/router.rb'
require 'lib/view.rb'
require 'db/gossip.csv'

Router.new.perform
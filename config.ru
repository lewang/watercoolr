require 'rubygems'
require 'sinatra'
require 'sequel'
require 'rest_client'
require 'zlib'
require 'json'

Sinatra::Application.set :run => false
Sinatra::Application.set :environment => ENV['RACK_ENV']

# add thid directory to load_path
dir = File.dirname(__FILE__)
$:.include?(dir) || $:.include?(File.expand_path(dir)) ||
  $:.unshift(File.expand_path(dir))

require 'watercoolr.rb'
run Sinatra::Application
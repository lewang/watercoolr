require 'rubygems'
require 'sinatra'


post '/test-handler' do
  puts params.inspect
end

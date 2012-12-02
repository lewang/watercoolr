require "rubygems"
require "rest_client"
require "json"

puts "creating channel..."
resp = RestClient.post "http://localhost:4567/channels", :data => ""
id = JSON.parse(resp)["id"]

puts "adding subscriber to channel #{id}"
resp = RestClient.post "http://localhost:4567/subscribers", {
  :data => {:channel => id, :url => ARGV[0]}.to_json
}

loop do
  print "Post message: "
  msg = STDIN.gets.chomp

  resp = RestClient.post "http://localhost:4567/messages", {
    :data => {:channel => id, :message => msg}.to_json
  }

  puts resp
end
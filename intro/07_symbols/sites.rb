require "open-uri"

urls = [
  "http://www.ruby-lang.org",
  "https://www.facebook.com",
  "https://www.spotify.com"
]

url_map = Hash.new

# Your code goes here

for url in urls
  puts url
  open(url) {|file|
    url_map[url.to_sym] = file.size
  }
end

puts url_map

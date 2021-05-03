require 'net/http'

url = 'https://www.tetsudo.com/traffic/'
uri = URI(url)

html = Net::HTTP.get(uri)


file = File.open('trafficnews.html', 'w')
file.write(html)
file.close
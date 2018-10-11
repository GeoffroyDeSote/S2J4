require 'rubygems'
require 'nokogiri'
require 'open-uri'

def crypto_cours(url)
	doc = Nokogiri::HTML(open(url))
	name_crypto = []
	cours_crypto = []
	doc.xpath('//td[@class = "no-wrap currency-name"]/a').each do |node|
    	name_crypto << node.text
	end
    doc.xpath('//td[@class = "no-wrap text-right"]/a').each do |node|
    	cours_crypto << node.text
	end
	puts  name_crypto.length
	puts cours_crypto.length
	#name_crypto.length.times do |i|
	puts Hash[name_crypto.zip cours_crypto]
	
end 
crypto_cours("https://coinmarketcap.com/all/views/all/")
	
#hash = {}
#...
#name_crypto.length.times do |i|
	#hash[name_crypto[i]] = cours_crypto[i]
	#end

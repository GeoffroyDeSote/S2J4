 
require 'rubygems'
require 'nokogiri'
require 'open-uri'

def get_the_email_of_a_townhal_from_its_webpage(url)
 doc = Nokogiri::HTML(open(url))
 hash = {}
 town_name = ''
 email_adress = ''

 # gets the name of the town from h1 html tag
  doc.xpath('/html/body/div/main/section[1]/div/div/div/h1').each do |node|
   town_name = node.text
  end
	 doc.xpath('/html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]').each do |node|
 	 email_adress = node.text
 # gets the email adress of said town 
 	end
 hash[town_name]=email_adress # puts it all in an hash
 puts hash
end

get_the_email_of_a_townhal_from_its_webpage("http://annuaire-des-mairies.com/95/vaureal.html")

def get_all_the_urls_of_val_doise_townhalls(url)
    doc = Nokogiri::HTML(open(url))
    hash = {}
    town_name = ''
    url_town = ''	
   doc.xpath('//td//a').each do |node|
   town_name = node.text
  end
  puts town_name
end

get_all_the_urls_of_val_doise_townhalls("http://annuaire-des-mairies.com/val-d-oise.html")
require 'pry'
require 'nokogiri'
require 'open-uri'

doc = Nokogiri::HTML(open("https://en.wikipedia.org/wiki/Cake"))
recipe= doc.css(".ingredient").text
binding.pry
	


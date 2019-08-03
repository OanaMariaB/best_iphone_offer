class BestIphoneOffer::Scraper 
 
def self.get_page
 doc = Nokogiri::HTML(open("https://www.fonehouse.co.uk/brand/apple-mobile-phone-deals"))
 puts doc
  binding.pry
end


end
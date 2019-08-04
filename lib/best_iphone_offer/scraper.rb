class BestIphoneOffer::Scraper 
  
  def self.scrape_offers
    doc = Nokogiri::HTML(open("https://www.fonehouse.co.uk/brand/apple-mobile-phone-deals"))
    offers = doc.css('div#filterResults').css('span.handset').text
    puts offers
    #binding.pry
 end

end #off the class
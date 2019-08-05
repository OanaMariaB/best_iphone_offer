class BestIphoneOffer::Scraper 
  
  def self.get_page
    Nokogiri::HTML(open("https://www.fonehouse.co.uk/brand/apple-mobile-phone-deals"))
  end
  
  def self.scrape_offers
    handset = get_page.css('div#filterResults').css('span.handset').text.gsub("Apple","").split("iPhone")
    handset.shift
    handset.each_with_index {|h, i| puts "#{i+1}. iPhone #{h}"}
  end
  
  def self.scrape_key_info
    contract_price = get_page.css('div.contract price')
    
    
  end

end #off the class
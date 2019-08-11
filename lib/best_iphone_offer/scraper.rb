class BestIphoneOffer::Scraper 
  
  def self.get_page
    Nokogiri::HTML(open("https://www.fonehouse.co.uk/brand/apple-mobile-phone-deals"))
  end
  
  def self.scrape_offers
    handset = get_page.css('div#filterResults div.deal-box')
    
    handset.each do |handset|
      name = handset.css('span.handset').text.gsub("Apple","").strip
      upfront_cost = handset.css('span.normal').text.downcase.gsub("from", "contract")
      price = handset.css('div.contract.cost.mx-auto.mx-sm-0').text
      contract_length = handset.css('div.length').text
      BestIphoneOffer::Offer.new(name, upfront_cost, price, contract_length)
    end
    
  end
  
 


end #off the class
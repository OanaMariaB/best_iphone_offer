class BestIphoneOffer::Scraper 
  
  def self.get_page
    Nokogiri::HTML(open("https://www.fonehouse.co.uk/brand/apple-mobile-phone-deals"))
  end
  
  def self.scrape_offers
    handset = get_page.css('div#filterResults').css('span.handset').text.gsub("Apple","").split("iPhone")
    handset.shift
    handset.each_with_index {|h, i| puts "#{i+1}. iPhone #{h}"}
  end
  
  def self.scrape_contract
    contract_details = get_page.css('div.contract.price')
    contract_details.each do |contract_details|
  
    offer = BestIphoneOffer::Offer.new
    offer.upfront_cost = contract_details.css('span.normal').text 
    offer.price = contract_details.css('div.contract.cost.mx-auto.mx-sm-0').text
    offer.contract_length = contract_details.css('div.length').text
    end
  end


end #off the class
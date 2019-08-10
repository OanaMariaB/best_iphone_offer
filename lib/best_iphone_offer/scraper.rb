class BestIphoneOffer::Scraper 
  
  def self.get_page
    Nokogiri::HTML(open("https://www.fonehouse.co.uk/brand/apple-mobile-phone-deals"))
  end
  
  def self.scrape_offers
    handset = get_page.css('div#filterResults div.deal-box')
    #.css('span.handset').text.gsub("Apple","").split("iPhone")
    #handset.shift
    
    handset.each do |handset|
      name = handset.css('span.handset').text.gsub("Apple","").strip
      upfront_cost = handset.css('span.normal').text 
      price = handset.css('div.contract.cost.mx-auto.mx-sm-0').text
      contract_length = handset.css('div.length').text
      BestIphoneOffer::Offer.new(name, upfront_cost, price, contract_length)
      binding.pry
    end
    
    
    #handset.each_with_index {|h, i| puts "#{i+1}. iPhone #{h}"}
  end
  
 


end #off the class
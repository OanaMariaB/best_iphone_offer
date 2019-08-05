class BestIphoneOffer::CLI
  
  def call
    puts "Welcome! Here are the best iPhone offers at the moment:"
     list_offer
     offer_details
     
     
  end #of call
    
  def list_offer
     BestIphoneOffer::Scraper.scrape_offers
  end
  
  def offer_details
    puts "Please select from the list which offer are you interested in?"
  end
    
  
end #of class
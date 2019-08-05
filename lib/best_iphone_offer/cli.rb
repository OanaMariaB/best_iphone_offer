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
   input = gets.strip #if valid_input?
    BestIphoneOffer::Scraper.scrape_contract
  end
  
  #def valid_input?
   # input = ""
  #end
  
 
    
  
end #of class
class BestIphoneOffer::CLI
  
  def call
    puts "Welcome! Here are the best iPhone offers at the moment:"
     BestIphoneOffer::Scraper.scrape_offers
     
     
      end #of call
    
    
    
 
  

  
end #of class
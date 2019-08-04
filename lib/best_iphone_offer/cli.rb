class BestIphoneOffer::CLI
  
  def call
    puts "Welcome! Here are the best iPhone offers at the moment"
     #call the method to list all the iphone offers 
     #1. Iphone 8
     #2. iphone x
     # .... 
     BestIphoneOffer::Scraper.scrape_offers
      
    end
    
    
    
   end
  

  
end
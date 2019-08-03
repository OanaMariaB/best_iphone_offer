class BestIphoneOffer::CLI
  
  def call
    puts "Welcome! Here are the best iphone offers at the moment!"
    @input = ""
    until @input == "exit"
      BestIphoneOffer::Scraper.get_page
      #list_offer
      #get_user_selection
      #
    end
    
    
    
   end
  

  
end
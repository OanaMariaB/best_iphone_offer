class BestIphoneOffer::CLI
  
  def call
    puts "Welcome! Here are the best iPhone offers at the moment:"
     list_offer
     offer_details
  end 
    
  def list_offer
     BestIphoneOffer::Scraper.scrape_offers
  end
  
  def offer_details
   puts "Please select from the list which offer are you interested in?"
   puts "Otherwise, please type exit."
   
   input = gets.strip.to_i - 1
     if input != "exit" && input.between?(0, BestIphoneOffer::Scraper.scrape_offers.size - 1)
   BestIphoneOffer::Scraper.scrape_contract
     puts " here put the upfront cost, price and contract lenght for the user selection "
    elsif
     puts "Please enter a number between 1 and #{BestIphoneOffer::Scraper.scrape_offers.size} "
    elsif
     input == "exit"
     goodbye
   end
   
  end #end of offer_details
  
 def goodbye
   puts "Thank you for checking Best iPhone Offers!"
 end
    
  
end #of class
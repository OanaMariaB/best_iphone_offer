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
   puts "Please select from the list which offer are you interested in? Otherwise, please type exit"
   
   input = ''
   if input != "exit" && valid_input?
    BestIphoneOffer::Scraper.scrape_contract
    puts "here based on the user input we list the offer details"
  end
  
  def valid_input?
   input = gets.strip.to_i - 1
    until input.between?(0, BestIphoneOffer::Scraper.scrape_offers.size - 1)
     puts "Sorry, please enter a number between 1 and #{BestIphoneOffer::Scraper.scrape_offers.size - 1}"
    end
  end
  
 
    
  
end #of class
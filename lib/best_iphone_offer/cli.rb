class BestIphoneOffer::CLI
  
  def call
    puts "Welcome! Here are the best iPhone offers at the moment:"
    BestIphoneOffer::Scraper.scrape_offers
     list_offer
  end 
    
  def list_offer
     BestIphoneOffer::Offer.all.each.with_index(1) do |handset, idx|
       puts "#{idx} #{handset.name}"
     end
     offer_details
  end
  
  def offer_details
   puts "Please select from the list which offer are you interested in?"
   puts "Otherwise, please type exit."
   
   input = gets.strip
     if input != "exit" && (input.to_i-1).between?(0, BestIphoneOffer::Offer.all.size - 1)
        puts " here put the upfront cost, price and contract lenght for the user selection "
     elsif input == "exit"
       goodbye
    else
       puts "Please enter a number between 1 and #{BestIphoneOffer::Offer.all.size} "
     list_offer
   end
   
  end #end of offer_details
  
 def goodbye
   puts "Thank you for checking Best iPhone Offers!"
 end
    
  
end #of class
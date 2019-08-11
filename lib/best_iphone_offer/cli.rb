class BestIphoneOffer::CLI
	  
	  def call
	    puts "\nWelcome! Here are the best iPhone offers at the moment:\n"
	    BestIphoneOffer::Scraper.scrape_offers
      list_offer
      menu
	     
	  end 

    def list_offer
	     BestIphoneOffer::Offer.all.each.with_index(1) do |handset, idx|
	       puts "#{idx} #{handset.name}"
	     end
	  end
	 
	  def menu
	   puts "\nPlease choose an offer from the list to see the details.\n"
	   puts "Type 'list' to see the offers again or 'exit' to exit."
	   puts ""
	   input = gets.strip.downcase
	   puts ""
	     if input != "exit" && (input.to_i-1).between?(0, BestIphoneOffer::Offer.all.size - 1)
	      offer = BestIphoneOffer::Offer.find(input)
	      puts "For the #{offer.name} you will pay #{offer.price} #{offer.contract_length} with #{offer.upfront_cost}" 
	     elsif input == "exit"
	       goodbye
	     elsif input == "list"
	       list_offer
	       menu
	     else
	        puts "\nPlease enter a number between 1 and #{BestIphoneOffer::Offer.all.size} \n"
	     menu
	     end
	   end #end of menu
	   
	 def show_offer
	   
	 end
	  
	 def goodbye
	   puts "\nThank you for checking Best iPhone Offers!\n"
	 end
	 
  

	  
	end #of class

  
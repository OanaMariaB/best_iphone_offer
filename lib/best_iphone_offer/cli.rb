class BestIphoneOffer::CLI
	  
	  def call
	    puts "\nWelcome! Here are the best iPhone offers at the moment:\n"
	    get_offers
	    list_offer
	    user_input
	  end 
	  
	  def get_offers
	    BestIphoneOffer::Scraper.scrape_offers
	  end
	    
	  def list_offer
	     BestIphoneOffer::Offer.all.each.with_index(1) do |handset, idx|
	       puts "#{idx} #{handset.name}"
	     end
	  end
	  
	  def user_input
	   puts "\nPlease select from the list which offer are you interested in?\n"
	   puts "Otherwise, please type 'exit'"
	   
	   input = gets.strip
	     if input != "exit" && (input.to_i-1).between?(0, BestIphoneOffer::Offer.all.size - 1)
	        puts " here you need the get offer method "
	     elsif input == "exit"
	       goodbye
	    else
	       puts "Please enter a number between 1 and #{BestIphoneOffer::Offer.all.size} "
	     list_offer
	   end
	   
	  end #end of user_inputexit
	  
	 def goodbye
	   puts "\nThank you for checking Best iPhone Offers!\n"
	 end
	    
	  
	end #of class

  
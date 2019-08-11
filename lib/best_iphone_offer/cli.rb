class BestIphoneOffer::CLI
	  
	  def call
	    puts "\nWelcome! Here are the best iPhone offers at the moment:\n"
	    BestIphoneOffer::Scraper.scrape_offers
      list_offer
      get_user_input
	     
	  end 

    def list_offer
	     @offers = BestIphoneOffer::Offer.all
	     @offers.each.with_index(1) do |handset, idx|
	       puts "#{idx} #{handset.name}"
	     end
	  end
	 
	  
	  def get_user_input
	   puts "\nPlease choose an offer from the list to see the details.\n"
	   puts "Otherwise, please type 'exit'"
	   
	   @input = gets.strip
	     if @input != "exit" && (@input.to_i-1).between?(0, BestIphoneOffer::Offer.all.size - 1)
	       show_offer
	     elsif @input == "exit"
	       goodbye
	     else
	        puts "\nPlease enter a number between 1 and #{BestIphoneOffer::Offer.all.size} \n"
	       list_offer
	       get_user_input
	     end
	   end #end of user_input
	  
	 def goodbye
	   puts "\nThank you for checking Best iPhone Offers!\n"
	 end
	 
	 def show_offer
	  
	    puts "For the iphone you have choose, you will pay an upfront cost of x, at a price per month of x for z contract lenght"
	  get_user_input
   end
  

	  
	end #of class

  
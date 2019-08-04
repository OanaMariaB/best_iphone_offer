class BestIphoneOffer::Scraper 
  
  def self.get_page
    Nokogiri::HTML(open("https://www.fonehouse.co.uk/brand/apple-mobile-phone-deals"))
  end
  
  def self.scrape_offers
    #handset = get_page.css('div#filterResults').css('span.handset').text.gsub("Apple", "")
    #puts handset
    
    handset = ["iPhone Xr", "iPhone Xs", "iPhone8", "iPhone8", "iPhone7", "iPhone Xs", "iPhone X", "iPhone 6s", "iPhone7", "iPhone 6sPlus"]
    
    handset.each_with_index {|h, i| puts "#{i+1}. #{h}"}
    
    
 end

end #off the class
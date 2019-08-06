class BestIphoneOffer::Offer 
  attr_accessor :name, :upfront_cost, :price, :contract_length
  
  @@all = []
  
  def initialize
    @name = name
    @upfront_cost = upfront_cost
    @price = price
    @contract_lenght = contract_length
    save
  end
  
  def self.all
    @@all
  end
  
  def save
    @@all << self
  end
  
end
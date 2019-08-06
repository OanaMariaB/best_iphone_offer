class BestIphoneOffer::Offer 
  attr_accessor :name, :upfront_cost, :price, :contract_length
  
  @@all = []
  
  def initialize(name, upfront_cost, price, contract_lenght)
    @name = name
    @upfront_cost = upfront_cost
    @price = price
    @contract_lenght = contract_lenght
    save
  end
  
  def self.all
    @@all
  end
  
  def save
    @@all << self
  end
  
end
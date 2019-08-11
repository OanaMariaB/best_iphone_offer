class BestIphoneOffer::Offer 
  attr_accessor :name, :upfront_cost, :price, :contract_length
  
  @@all = []
  
  def initialize(name, upfront_cost, price, contract_length)
    @name = name
    @upfront_cost = upfront_cost
    @price = price
    @contract_length = contract_length
    save
  end
  
  def self.all
    @@all
  end
  
  def self.find(input)
    self.all[input.to_i - 1]
  end
  
  def save
    @@all << self
  end
  
end
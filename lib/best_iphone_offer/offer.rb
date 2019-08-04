class BestIphoneOffer::Offer 
  attr_accessor :name, :price, :contract_length
  
  @@all = []
  
  def initialize(name, price, contract_length)
    @name = name
    @price = price
    @contract_length = contract_length
    save
  end
  
  def self.all
    @@all
  end
  
  def save
    @@all << self
  end
  
end
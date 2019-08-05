class BestIphoneOffer::Offer 
  attr_accessor :handset, :upfront_cost, :price, :contract_length
  
  @@all = []
  
  def initialize(name, upfront_cost, price, contract_lenght)
    @handset = handset
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
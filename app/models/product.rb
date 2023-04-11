class Product < ApplicationRecord
  belongs_to :supplier	
#Validations  
  validates :name, presence: true
  validates :price, presence: true, numericality: { greater_than: 0 }
  validates :image_url, presence: true

#Discontinued?
  def is_discounted?
    if price <= 10
      return true 
    end
  end

#TAX
  def tax
    tax_rate  = 0.09
    tax = price * tax_rate
    return tax
  end

#TOTAL
  def total
    total = tax + price
    return total
  end


#FIN
end

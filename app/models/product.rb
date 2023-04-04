class Product < ApplicationRecord

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

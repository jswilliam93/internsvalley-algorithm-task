def pricing_algorithm
  price_suggestion = (price_reference - product_database.shipping_cost * shipping_factor(price_reference)) * brand_rating_factor(brand.rating)
  price_original = price_suggestion
end

def brand_rating_factor(rating)
  case rating
  when high
    1.1
  when low
    0.9
  else
    1
  end
end

def shipping_factor(price_reference)
  case price_reference
  when < 15
    0.75
  when < 25
    0.775
  when < 50
    0.8
  when < 75
    0.825
  when < 100
    0.85
  when < 200
    0.875
  when < 400
    0.9
  when < 600
    0.925
  else
    0.95
  end
end

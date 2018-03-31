def pet_shop_name(pet_shop)
  return pet_shop[:name]
end

def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop, num)
  return pet_shop[:admin][:total_cash] += num
end

def pets_sold(pet_shop)
  return pet_shop[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop, num)
  return pet_shop[:admin][:pets_sold] += num
end

def stock_count(pet_shop)
  return pet_shop[:pets].length
end

def pets_by_breed(pet_shop, breed)
  pets_array = []
  for pet in pet_shop[:pets]
    # do something if pet's breed == breed passed in
    if pet[:breed] == breed
      pets_array.push(breed)
    end
  end
  return pets_array
end

def find_pet_by_name(pet_shop, name)
  pet_names = []
  for pet in pet_shop[:pets]
    if pet[:name] == name
      return pet
    end
  end
  return nil
end

def remove_pet_by_name(pet_shop, name)
  for pet in pet_shop[:pets]
    if pet[:name] == name
      return pet_shop[:pets].delete(pet)
    end
  end
end

def add_pet_to_stock(pet_shop, new_pet)
  pet_shop[:pets].push(new_pet)
  return pet_shop[:pets]
end

def customer_pet_count(customers)
 return customers[:pets].count
end

def add_pet_to_customer(customer, new_pet)
 customer[:pets].push(new_pet)
end

def customer_can_afford_pet(customer, new_pet)
    if customer[:cash] < new_pet[:price]
      return false
    elsif customer[:cash] >= new_pet[:price]
      return true
    end
end

def sell_pet_to_customer(pet_shop, pet, customer)
  if customer_can_afford_pet(customer, pet)
   increase_pets_sold(pet_shop, 1)
   add_or_remove_cash(pet_shop, pet[:price])
   add_pet_to_customer(customer, pet)
  end
end

#   if customer_can_afford_pet = true
#     return add_pet_to_customer(customer, new_pet)
#   end
#   if
#     add_pet_to_customer = 1
#     return pet_shop[:admin][:pet_sold] += 1
#     pet_shop[:admin][:total_cash] += pet[:price]
#   end
#
# end
# # If the customer can afford the pet
# Increase the number of pets sold by the shop by 1
# Increase the amount of money the shop has by the value of the pet
# Give the pet to the customer

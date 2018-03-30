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
end


    # for chicken in chickens_array
#     if chicken[:name] == name
#       return chicken
#     end
#   end
#   return nil
# end

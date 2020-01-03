CLEARANCE_ITEM_DISCOUNT_RATE = 0.20
BIG_PURCHASE_DISCOUNT_RATE = 0.10

def find_item_by_name_in_collection(name, collection)
  i = 0
  while i < collection.length do
    return collection[i] if name === collection[i][:item]
    i += 1
  end
  nil# Implement me first!
  #
  # Consult README for inputs and outputs
end

def consolidate_cart(cart)
  i = 0
    result = []

    while i < cart.count do
      item_name = cart[i][:item]
      sought_item = find_item_by_name_in_collection(item_name, result)
      if sought_item
        sought_item[:count] += 1
      else
        cart[i][:count] = 1
        result << cart[i]
      end
      i += 1
    end

    result  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
end

def apply_coupons(cart, coupons)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def checkout(cart, coupons)
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
end

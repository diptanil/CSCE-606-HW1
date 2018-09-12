# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.inject(0, :+)
end

def max_2_sum arr
  if arr.length == 0
    return 0
  elsif arr.length == 1
    return arr.at(0)
  else
    b = arr.sort { |x,y| y <=> x }
    return b.at(0) + b.at(1)
  end
end

def sum_to_n? arr, n
  if arr.length <= 1
    return false
  else
    arr.each { |a|
      na = n - a
      brr = []
      brr.replace(arr)
      brr -= [a]
      if brr.include?(na)
        return true
      end
    }
    return false
  end
end

# Part 2

def hello(name)
  return "Hello, " + name
end

def starts_with_consonant? s
  alphabets = [*?a..?z, *?A..?Z]
  vow = ['A','a','E','e','I','i','O','o','U','u']
  if s.length == 0
    return false
  elsif alphabets.include?(s[0])
    if vow.include?(s[0])
      return false
    else
      return true
    end
  else
    return false
  end
end

def binary_multiple_of_4? s
  l = s.length
  if l == 0
    return false
  end
  chars = s.split("")
  chars.each{ |c|
    if not(c == '1' || c == '0')
      return false
    end
  }
  sum = 0
  chars.each_with_index { |c,i|
    sum = sum + (c.to_i * 2 ** (l - i - 1))
  }
  if sum % 4 == 0
    return true
  else
    return false
  end
end

# Part 3

class BookInStock
  
 def initialize(isbn,price)
   raise ArgumentError.new("Not valid isbn") if isbn.length == 0
   raise ArgumentError.new("Not valid price") if price <= 0
   @isbn = isbn
   @price = price
 end
 
 def isbn
   @isbn
 end
 def price
   @price
 end
 
 def isbn=(i)
   @isbn = i
 end
 def price=(p)
   @price = p
 end
 
 def price_as_string
   return "$" + sprintf("%#.2f", @price)
 end
end

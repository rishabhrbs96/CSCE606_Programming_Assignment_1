# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  return arr.sum
  # Reference: https://ruby-doc.org/core-2.6.6/Array.html#method-i-sum
end

def max_2_sum arr
  # YOUR CODE HERE
  return arr.max(2).sum
  # Reference: https://ruby-doc.org/core-2.6.6/Array.html#method-i-max
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  hashMap = Hash.new(0)
  for a in arr
    if hashMap[n - a] != 0
      return true
    end
    t = hashMap[a]
    hashMap[a] = t + 1
  end
  return false
  # Reference: https://ruby-doc.org/core-2.6.6/Hash.html#method-c-new
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s.length() == 0
    return false
  end
  case s[0]
  when 'a','e','i','o','u','A','E','I','O','U'
    return false
  end
  if s[0].downcase.ord < 97 or s[0].downcase.ord > 122
    return false
  end
  return true
end

def is_valid_binary? s
  i = 0
  while i < s.length
    if s[i] != "1" and s[i] != "0"
      return false
    end
    i = i + 1
  end
  return true
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s.length == 0
    return false
  end
  if s.length == 1
    if s[0] == '0'
      return true
    else
      return false
    end
  end
  if s.length == 2
    if s[0] == '0' and s[1] == '0'
      return true
    else
      return false
    end
  else
    if is_valid_binary?(s) == false
      return false
    end
    if s[s.length - 1] == '0' and s[s.length - 2] == '0'
      return true
    else
      return false
    end
  end
  return true
end

# Part 3

class BookInStock
# YOUR CODE HERE
  attr_writer :isbn, :price
  attr_reader :isbn, :price
  def initialize(isbn, price)
    if isbn.length() == 0 or price <= 0
      raise ArgumentError
    end
    @isbn = isbn
    @price = price
  end
  
  def price_as_string()
      x = '%.2f' % @price.to_f
      return "$" + x.to_s
  end
  # Reference: https://medium.com/launch-school/the-basics-of-oop-ruby-26eaa97d2e98
end

# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  # arr.inject(0, :+)
  s = 0
  for i in arr
    s = s + i
  end
  return s
end

def max_2_sum arr
  # YOUR CODE HERE
  n = arr.length
  if n==0
    return n
  end
  if n==1
    return arr[0]
  else
    arr = arr.sort()
    m1 = 0
    m2 = 0
    m1 = arr[-1]
    m2 = arr[-2]
    return m1+m2
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  if arr.length < 2
    return false
  end
  d={}
  arr.each do |i|
    if d[i]==nil
      d[i] = 1
    else
      d[i] = d[i]+1                 # increase the frequency of element if repeated(when the element already exists in hash)
    end
    if d.has_key?(n-i) == true
      if i!=n-i or d[i]>1           # Check if sum is not half of the element, if sum is element/2, then check if the frequency of element is greater than 2
        return true
      end
    end
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s.length==0                          # return false if the string is empty
    return false
  end
  if not s[0].match?(/[[:alpha:]]/)       # return false if the first character is not alphabet
    return false
  end
  if s[0]== 'a' or s[0]== 'A' or s[0]== 'e' or s[0]== 'E' or s[0]== 'i' or s[0]== 'I' or s[0]== 'o' or s[0]== 'o' or s[0]== 'u' or s[0]== 'U'
    return false
  else
    return true
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  return false if s.length==0
  return false if not s !~ /[^01]/
  number = s.to_i(2)
  return true if number % 4 == 0
end

# Part 3

class BookInStock
  # YOUR CODE HERE
  attr_accessor :isbn
	attr_accessor :price
	
  def initialize(isbn, price)
      @isbn = isbn
      @price = price
      if @isbn=='' or @price <= 0 
  			raise ArgumentError
  		end
  end
  
  def price_as_string
    return "$#{'%.2f' % @price}"
  end
end

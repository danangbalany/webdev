#write your code here
def add(a,b)
  a + b
end

def subtract(a,b)
  a - b
end

def sum(array)
  if array == []
    0
  elsif array.length == 1
    array[0]
  else
    array.reduce(:+)
  end
end

def multiply(*args)
  args.reduce(:*)
end

def power(a,b)
  a ** b
end

def factorial num
  total = 1
  (num + 1).times do |i|
      if i != 0
          total *= i
      end
  end
  total
end
#write your code here
def add(num1, num2)
  num1 + num2
end

def subtract(num1, num2)
  num1 - num2
end

def multiply(*args)
  total = 1
  args.each do |item|
    total = total * item
  end
  total
end

def divide(num1, num2)
  if num2 == 0
    return 0
  end
  num1 / num2
end

def sum(nums)
  nums.inject(0){|total,x| total + x}
end

def power(num1, num2)
  num1 ** num2
end

def factorial(num)  
  if num < 0
    0
  elsif num == 0 or num == 1
    1
  else
    (num * factorial(num - 1))
  end
end
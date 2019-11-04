#write your code here
def ftoc(temperature)
  (temperature - 32) * (5/9.0)
end

puts ftoc(212)

def ctof(temperature)
  (temperature * (9.0/5)) + 32
end

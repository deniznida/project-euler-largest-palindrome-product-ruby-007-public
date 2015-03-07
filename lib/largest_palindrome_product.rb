# Implement your procedural solution here!
def palindrome?(number)
  number.to_s == number.to_s.reverse
end

def largest_palindrome_product
  array = []
  (1..999).each do |x|
    (1..999).each do |y|
      array.push(x * y)
    end
  end
  array.select {|number| palindrome?(number)}.max
end
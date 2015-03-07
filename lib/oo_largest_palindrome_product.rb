# Implement your object-oriented solution here!
class LargestPalindromeProduct
  def palindrome?(number)
    number.to_s == number.to_s.reverse
  end

  def answer
    array = []
    (1..999).each do |x|
      (1..999).each do |y|
        array.push(x * y)
      end
    end
    array.select {|number| palindrome?(number)}.max
  end
end
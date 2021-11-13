class Exercise

  # Assume that "str" is a sequence of words separated by spaces
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar"
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar"

  def self.marklar(str)
    list = str.split(/\b/)
    result = list.map do |word|
      if word.length > 4 && word[0] == word[0].upcase
        word = 'Marklar'
      elsif word.length > 4
        word = 'marklar'
      else
        word
      end
    end
    result.join
  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8)
  # and the sum of its even numbers is (2 + 8) = 10

  def self.even_fibonacci(nth)
    numbers = fibonacci(nth)
    even_nums = []
    numbers.each do |num|
      even_nums << num if num.even?
    end
    even_nums.sum
  end

  def self.fibonacci(n)
    num1 = 0
    num2 = 1
    sequence = []
    sequence << num2
    count = n - 1
    while count >= 1
      num3 = num1 + num2
      sequence. << num3
      num1 = num2
      num2 = num3
      count -= 1
    end
    sequence
  end

end

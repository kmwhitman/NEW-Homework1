# Returns the first n Fibonacci numbers
def fib(n)
      result = []
  return result if n == 0  # If n is 0, return empty array

  result << 0              # First Fibonacci number
  return result if n == 1  # If n is 1, return [0]

  result << 1              # Second Fibonacci number
  (2...n).each do |i|
    result << result[i - 1] + result[i - 2]  # Add previous two numbers
  end
  result
end

# Returns true if n is a palindrome
def isPalindrome(n)
    str = n.to_s        # Convert integer to string
    str == str.reverse  # Check if string is same forwards and backwards
end

# Returns the nth largest value in the array, or nil if it doesn't exist
def nthmax(n, a)
      sorted = a.sort.reverse  # Sort array descending
  return nil if n >= sorted.length
  sorted[n]               # Return nth largest value

end

# Returns the character with the highest frequency in a string
def freq(s)
      return "" if s.empty?    # Return empty string if input is empty

  counts = Hash.new(0)
  s.each_char do |char|
    counts[char] += 1      # Count occurrences of each character
  end

  counts.max_by { |char, count| count }[0]  # Return character with highest count
end

# Returns a hash mapping elements of arr1 to arr2
def zipHash(arr1, arr2)
      return nil if arr1.length != arr2.length  # Arrays must be same length

  hash = {}
  arr1.each_with_index do |item, index|
    hash[item] = arr2[index]                # Map arr1[i] => arr2[i]
  end
  hash
end

# Converts a hash to an array of [key, value] pairs
def hashToArray(hash)
     result = []
  hash.keys.each do |key|
    result << [key, hash[key]]              # Add [key, value] to result
  end
  result
end

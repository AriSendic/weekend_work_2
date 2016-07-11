# Complete the method called palindrome? which should accept a string as a parameter and return a boolean indicated whether the string is a palindrome. A palindrome is a word that reads the same both forwards and backwards. Examples: eye, madam, racecar

def palindrome?(string)
  #  I did it two different ways. See below.  I also realized that the 
  #  first approach works just fine without making it an array.
  array = string.split("")
  length = array.length
  first_index = 0
  second_index = length - 1
  answer = true
  if length.odd?
    ((length - 1) / 2).times do  
      if array[first_index] == array[second_index]
        first_index += 1
        second_index -= 1
        answer = true
      else
        answer = false  
      end  
    end
  else  
    (length / 2).times do
      if array[first_index] == array[second_index]
        first_index += 1
        second_index -= 1
        answer = true
      else
        answer = false  
      end  
    end
  end  
  answer
end
# def palindrome?(string)
#   array = string.split("")
#   answer = true
#   length = array.length
#   if length.odd?
#     ((length - 1) / 2).times do  
#       if array.shift == array.pop
#         answer = true     
#       else
#         answer = false
#         break
#       end
#     end
#   else 
#     (length / 2).times do  
#       if array.shift == array.pop
#         answer = true 
#       else
#         answer = false
#         break     
#       end
#     end
#   end
#   answer
# end
# Driver code - don't touch anything below this line.
puts "TESTING palindrome?"
puts

result = palindrome?("racecar")

puts "Your method returned:"
p result
puts

if result == true
  puts "PASS!"
else
  puts "F"
end

result = palindrome?("wazzzzup")

puts "Your method returned:"
p result
puts

if result == false
  puts "PASS!"
else
  puts "F"
end
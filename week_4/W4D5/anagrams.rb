# Phase I:
# Write a method #first_anagram? that will generate and store all the possible anagrams of the 
# first string. Check if the second string is one of these.

# Hints:

# For testing your method, start with small input strings, otherwise you might wait a while
# If you're having trouble generating the possible anagrams, look into this method.

# ("e lvis", "e lvsi" ,"e vlsi", "e vlis")

# arr.permutation.to_a

def first_anagram?(str1, str2)
    anagrams = str1.split('').permutation.to_a.map{|x| x.join('')}
    return anagrams.include?(str2)
end

# p first_anagram?('elvis', "lives")  # true
# p first_anagram?('abc', "bac")      # true

# What is the time complexity of this solution? What happens if you increase the size of the strings?
    # O(n * n!) => O(n!) (?)


####################################################################################################
# Phase II:
# Write a method #second_anagram? that iterates over the first string. 
# For each letter in the first string, find the index of that letter in the second string 
    #(hint: use Array#find_index) and delete at that index. 
# The two strings are anagrams if an index is found for every letter and the second string is empty 
    # at the end of the iteration.


def second_anagram?(str1,str2)      #O(N)
    str1.each_char do |char1|       # N
        idx = str2.index(char1)     # k
        if idx == nil               #k
            return false
        else
            str2 = str2[0...idx] + str2[idx+1..-1]      # k
        end
    end

    true if str2.length==0      
end

# p second_anagram?('elvis', "lives")  # true
# p second_anagram?('abc', "bac")      # true
# p second_anagram?('sadfsafsf', "berewrac")  # false


# Try varying the length of the input strings. What are the differences between #first_anagram? 
    # and #second_anagram??

        # 1st: O(N!)
        # 2nd: O(N)

        # 1st method will take ALOT longer than 2nd one.
####################################################################################################
# Phase III:
# Write a method #third_anagram? that solves the problem by sorting both strings alphabetically. 
# The strings are then anagrams if and only if the sorted versions are the identical.
# What is the time complexity of this solution? Is it better or worse than #second_anagram??

def third_anagram?(str1,str2)
    arr1 = str1.split('') #k
    arr2 = str2.split('') #k
    arr1.sort == arr2.sort #2n^2

end

# p third_anagram?('elvis', "lives")  # true
# p third_anagram?('abc', "bac")      # true
# p third_anagram?('sadfsafsf', "berewrac")  # false

#time complexity : O(N^2)
####################################################################################################
# Phase IV:
# Write one more method #fourth_anagram?. This time, use two Hashes to store the number of times each 
# letter appears in both words. Compare the resulting hashes.

# What is the time complexity?

# Bonus: Do it with only one hash.
# Discuss the time complexity of your solutions together, then call over your TA to look at them.

def fourth_anagram?(str1, str2)
    hash1 = Hash.new(0)
    hash2 = Hash.new(0)

    str1.each_char { |char| hash1[char] += 1 }
    str2.each_char { |char| hash2[char] += 1 }

    hash1 == hash2
end

# p fourth_anagram?('elvis', "lives")  # true
# p fourth_anagram?('abc', "bac")      # true
# p fourth_anagram?('sadfsafsf', "berewrac")  # false

def bonus_anagram?(str1, str2)
    hash= Hash.new(0)

    str1.each_char { |char| hash[char] += 1 }
    str2.each_char { |char| hash[char] -= 1 }

    hash.each_value.all? { |value| value == 0 }
end

p bonus_anagram?('elvis', "lives")  # true
p bonus_anagram?('abc', "bac")      # true
p bonus_anagram?('sadfsafsf', "berewrac")  # false
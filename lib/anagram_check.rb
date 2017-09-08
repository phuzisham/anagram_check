class Anagram
  def initialize(str1)
    @str1 = str1
  end

  def anagram_check(str2)
    str1 = @str1
    str1_sort = str1.gsub(/[^a-z]/i, '').downcase.split('').sort.join('')
    str2_sort = str2.gsub(/[^a-z]/i, '').downcase.split('').sort.join('')
    str1_rev = str1.gsub(/[^a-z]/i, '').downcase.reverse
    str2_rev_check = str2.gsub(/[^a-z]/i, '').downcase
    str_count = str1_sort.scan(/[#{str2_sort}]/).count

    if (str1.scan(/[aeiouAEIOU]/).count >= 1 && str2.scan(/[aeiouAEIOU]/).count >= 1)
      if (str1_sort === str2_sort && str1_rev === str2_rev_check)
        'These words are anagrams and palindromes!'
      elsif (str1_sort === str2_sort)
        'These words are anagrams!'
      else
        if (str_count >= 1)
          'These words are not anagrams and have ' + str_count.to_s + ' letters in common!'
        else
          'These words are antigrams!'
        end
      end
    else
      'You need to input actual words!'
    end
  end
end

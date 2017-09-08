class Anagram
  def anagram_check(str1, str2)
    str1_sort = str1.downcase.split('').sort.join('')
    str2_sort = str2.downcase.split('').sort.join('')
    str1_rev = str1.downcase.reverse

    if (str1.scan(/[aeiouAEIOU]/).count >= 1 && str2.scan(/[aeiouAEIOU]/).count >= 1)
      if (str1_sort === str2_sort && str1_rev === str2.downcase)
        'These words are anagrams and palindromes!'
      elsif (str1_sort === str2_sort)
        'These words are anagrams!'
      else
        if (str1_sort.downcase.scan(/[#{str2_sort}]/).count >= 1)
          'These words are not anagrams!'
        else
          'These words are antigrams!'
        end
      end
    else
      'You need to input actual words!'
    end
  end
end

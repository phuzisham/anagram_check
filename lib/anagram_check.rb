class Anagram
  def anagram_check(str1, str2)
    str1_sort = str1.downcase.split('').sort
    str2_sort = str2.downcase.split('').sort
    str1_rev = str1.reverse.downcase

    if (str1_sort === str2_sort && str1_rev === str2)
      'These words are anagrams and palindromes!'
    elsif (str1_sort === str2_sort)
      'These words are anagrams!'
    else
      'These words are not anagrams!'
    end
  end
end

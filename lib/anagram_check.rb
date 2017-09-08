class Anagram
  def anagram_check(str1, str2)
    str1 = str1.split('').sort
    str2 = str2.split('').sort

    if (str1 === str2)
      true
    else
      false
    end
  end
end

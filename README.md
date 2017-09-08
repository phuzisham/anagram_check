# _Anagram Checker_

#### _A Ruby script that can check if 2 strings are anagrams., 09.08.2017_

#### By _David Hale_

## Description

_Script takes two strings and runs a series of comparisons on them._

## Specs

| Description        | Input           | Output  |
| ------------- |:-------------:| -----:|
| It will check if strings are actual words. | 'rby', 'bury' | 'You need to input actual words!' |

| It will check if strings are anagrams. | 'ruby', 'bury' | 'These words are anagrams!' |

| It will check if strings are not anagrams. |  'mango', 'melon'  | 'These words are not anagrams!' |

| It will run checks ignoring case. | 'ruBy', 'buRy' | 'These words are anagrams!' |

| It will check if anagrams are also palindromes. | 'Racecar', 'racecar' | 'These words are anagrams and palindromes!' |

| It will check if strings are anti-grams. | 'Kite', 'Car' | 'These words are antigrams!' |

| It will remove spaces and run checks. | 'Race Car', 'racecar' | 'These words are anagrams and palindromes!' |

| It will remove special characters and run checks. | 'Race Car', 'racecar!!!##@@' | 'These words are anagrams and palindromes!' |

## Setup/Installation Requirements

1. _Download files [here](https://github.com/phuzisham/anagram_check.git)._

2. _In terminal run 'anagram_check_script.rb'._

3. _Follow the prompts._

## Support and contact details

_If you have questions or you run into any issues please email me (david.hale7@gmail.com)_

## Technologies Used

_Ruby 2.2.2 and the gems 'rspec' and 'pry'._

### License

*MIT License}*

Copyright (c) 2017 **_David Hale_**

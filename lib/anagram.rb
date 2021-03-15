# Your code goes here!
require "pry"

class Anagram
    
    # create a reader and a writer for an instance variable word
    #attr_accessor :word
    
    # make class the Anagram take a word on initialization
    
    def initialize(anagram)
        @anagram = anagram
    end

    # create a match method takes an array of possible anagrams
    # and iterates over the array of possible anagrams

    def match(words)
        words.select do |word|
            is_anagram?(word)
        end
    end    
    
    # to compare each word of the array of possible anagrams
    # to the instance variable word, sort each word of the array by its characters
    # and sort the caracters of teh instance variable world
    # then use the == to check if words equal each other
    def is_anagram?(word)
        word.chars.sort == @anagram.chars.sort
    end
end
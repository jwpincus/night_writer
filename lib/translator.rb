require 'pry'
require './lib/parser'

class Translator
    attr_accessor :english_characters, :braille_characters
    def initialize(english_characters = [], braille_characters = [])
        @english_characters = english_characters
        @braille_characters = braille_characters
    end

    def english_to_braille_translator
        @english_characters.each do |character|
            @braille_characters << alphabet_hash[character]
        end
        @braille_characters
    end

    def braille_to_english_translator
        @braille_characters.map do |braille|
            alphabet_hash.key(braille)
        end
    end

    def alphabet_hash
        {"a" => ["0.","..",".."], "b" => ["0.","0.",".."], "c" => ["00","..",".."], "d" => ["00",".0",".."],
        "e" => ["0.",".0",".."], "f" => ["00","0.",".."], "g" => ["00","00",".."], "h" => ["0.","00",".."],
        "i" => [".0","0.",".."], "j" => [".0","00",".."], "k" => ["0.","..","0."], "l" => ["0.","0.","0."],
        "m" => ["00","..","0."], "n" => ["00",".0","0."], "o" => ["0.",".0","0."], "p" => ["00","0.","0."],
        "q" => ["00","00","0."], "r" => ["0.","00","0."], "s" => [".0","0.","0."], "t" => [".0","00","0."],
        "u" => ["0.","..","00"], "v" => ["0.","0.","00"], "w" => [".0","00",".0"], "x" => ["00","..","00"],
        "y" => ["00",".0","00"], "z" => ["0.",".0","00"], "!" => ["..","00","0."], "'" => ["..","..","0."],
        "," => ["..","0.",".."], "-" => ["..","..","00"], "." => ["..","00",".0"], "?" => ["..","0.","00"],
        "capital" => ["..", "..", ".0"], "number" => [".0", ".0", "00"], " " => ["..","..",".."]}
    end
    
    
end
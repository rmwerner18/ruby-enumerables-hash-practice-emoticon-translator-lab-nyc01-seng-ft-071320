require 'yaml'
require 'pry'

def load_library(file)
  emoticons = YAML.load_file(file)
  emoticons_keys = emoticons.keys

  emoticons.each do |element|
    emoticons[element] = {english: emoticons[element][0], japanese: emoticons[element][1]}
  binding.pry
end
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end

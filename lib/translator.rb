# require modules here
require 'yaml'
require 'pry'

def load_library(file)
  emoticons = YAML.load_file(file)
  binding pry
  emoticons.each do |element|
    emoticons[element].to_
    emoticons[element] = {english: element[0], japanese: element[1]}
  end
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end

# require modules here
require 'yaml'

def load_library(file)
  emoticons = YAML.load_file(file)
  emoticons.each {|element| element = {english: element[0], japanese: element[1]}}
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end

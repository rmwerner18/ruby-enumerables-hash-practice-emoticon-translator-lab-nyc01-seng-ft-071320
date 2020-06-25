require 'yaml'
require 'pry'

def load_library(file)
  emoticons = YAML.load_file(file)
  keys = emoticons.keys
  binding.pry
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end

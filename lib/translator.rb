require 'yaml'
require 'pry'

def load_library(file)
  emoticons = YAML.load_file(file)
  keys = emoticons.keys
  count = 0
  while count < keys.length do
    emoticons[keys[count]] = {english: emoticons[keys[count]][0], emoticons[keys[count]][1]}
  end
  binding.pry
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end

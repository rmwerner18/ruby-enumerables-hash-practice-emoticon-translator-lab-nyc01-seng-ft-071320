require 'yaml'
require 'pry'

def load_library(file)
  emoticons = YAML.load_file(file)
  keys = emoticons.keys
  count = 0
  while count < keys.length do
    emoticons[keys[count]] = {english: emoticons[keys[count]][0], japanese: emoticons[keys[count]][1]}
    count += 1
  end
  emoticons
end

def get_japanese_emoticon(file, emoticon)
  emoticons = load_library(file)
  keys = emoticons.keys
  count = 0
  while count < keys.length do
    if emoticons[keys[count]][:english] = emoticon
      return emoticons[keys[count]][:japanese]
    end
    count += 1
  end
end

def get_english_meaning(file, emoticon)
  emoticons = load_library(file)
  keys = emoticons.keys
  emoticons.each do |element|
    if element[:japanese] == emoticon
      return element
    end
  end
end

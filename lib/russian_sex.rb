require 'russian_sex/version'
require 'unicode_utils/downcase'

module RussianSex
  class Detector
    def initialize
      data_file = File.expand_path('../data/names.txt', __FILE__)

      @names = File.read(data_file).split.inject({}) do |hash, name|
        name, gender = name.split(';')
        hash[name] = gender
        hash
      end
    end

    def detect name
      @names[UnicodeUtils.downcase(name.strip)] || 'undefined'
    end
  end
end

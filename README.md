# RussianSex
[![Build Status](https://travis-ci.org/makaroni4/russian_sex.png)](https://travis-ci.org/makaroni4/russian_sex)

Detecting gender based on russian first names.
Определение пола пользователя по имени.

## Installation

Add this line to your application's Gemfile:

    gem 'russian_sex'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install russian_sex

## Usage

~~~ruby
detector = RussianSex::Detector.new
detector.detect 'Валера'
# => 'M'

detector.detect 'Мария'
# => 'F'

detector.detect 'Женя'
# => '-'

detector.detect 'ГадяПетровичХренова'
# => 'undefined'
~~~

## TODO

Добавить морфологический модуль – если не нашлось имя в списке, то определить имя по окончанию.

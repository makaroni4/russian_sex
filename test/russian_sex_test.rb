# encoding: utf-8
require 'test_helper'

describe 'RussianSex' do
  let(:detector) { RussianSex::Detector.new }

  it 'detects male names' do
    detector.detect('Валера').must_equal 'M'
  end

  it 'detects female names' do
    detector.detect('Мария').must_equal 'F'
  end

  it 'detects ambiguous names' do
    detector.detect('Абиби').must_equal '-'
  end

  it 'says undefined for wrong names' do
    detector.detect('ГадяПетровичХренова').must_equal 'undefined'
  end
end
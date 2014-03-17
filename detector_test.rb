gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'detector'

class DetectorTest < MiniTest::Test
  def test_it_has_a_dictionary
    detector = Detector.new(["kinship", "pinkish"])
    assert_equal ["kinship", "pinkish"], detector.dictionary
  end

  def test_it_can_detect_anagram
    detector = Detector.new(["kinship", "pinkish"])
    assert_equal ["kinship"], detector.detect("pinkish")
  end

  def test_it_can_detect_another_anagram
    detector = Detector.new(["inlets", "listen", "silent", "enlist"])
    assert_equal ["inlets", "listen", "silent"], detector.detect("enlist")
  end
end

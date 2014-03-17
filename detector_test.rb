gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'detector'

class DetectorTest < MiniTest::Test
  def test_it_has_a_dictionary_of_anagrams
    detector = Detector.new({"hiiknps" => ["pinkish", "kinship"]})
    assert_equal ["pinkish", "kinship"], detector.dictionary["hiiknps"]
  end

  def test_it_can_detect_anagram
    detector = Detector.new({"hiiknps" => ["pinkish", "kinship"]})
    assert_equal ["kinship"], detector.detect("pinkish")
    assert_equal ["pinkish"], detector.detect("kinship")
  end

  def test_it_can_detect_another_anagram
    detector = Detector.new("eilnst" => ["inlets", "listen", "silent", "enlist"])
    assert_equal ["inlets", "listen", "silent"], detector.detect("enlist")
    assert_equal ["inlets", "listen", "enlist"], detector.detect("silent")
  end
end

gem 'minitest'
require '../lib/scrabble'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class ScrabbleTest < Minitest::Test
  def test_it_can_score_a_single_letter
    assert_equal 1, Scrabble.new.score("a")
    assert_equal 4, Scrabble.new.score("f")
  end

  def test_it_can_score_a_word
    assert_equal 12, Scrabble.new.score("beach")
    assert_equal 5, Scrabble.new.score("hi")
  end

  def test_it_can_score_words_with_letters_of_any_case
    assert_equal 8, Scrabble.new.score("HeLlO")
    assert_equal 8, Scrabble.new.score("tHeRe")
  end

  def test_it_will_return_zero_for_an_empty_string_and_nil
    assert_equal 0, Scrabble.new.score("")
    assert_equal 0, Scrabble.new.score(nil)
  end

end

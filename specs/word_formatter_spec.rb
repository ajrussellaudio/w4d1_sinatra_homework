require "minitest/autorun"
require "minitest/rg"

require_relative "../models/word_formatter"

class TestWordFormatter < MiniTest::Test

  def setup()
    @test_words = WordFormatter.new("code clan 1234")
  end

  def test_upcase
    assert_equal("CODE CLAN 1234", @test_words.my_upcase)
  end

  def test_camelcase
    assert_equal("CodeClan1234", @test_words.camelcase)
  end

end
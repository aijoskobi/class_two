require File.dirname(__FILE__) + '/password_generator'
require 'test/unit'

class SubstituteTest < Test::Unit::TestCase
  
  def test_vowel_substitution
    assert_equal('t0g3th3r',   substitute('together'))
    assert_equal('sc0tch',     substitute('scotch'))
    assert_equal('0h10 st4t3', substitute('ohio state'))
    assert_equal('2nd3r',      substitute('under'))
  end
  
  def test_no_substitutions_occur
    assert_equal('tmnplj',     substitute('tmnplj'))
  end
  
end
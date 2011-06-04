require File.dirname(__FILE__) + '/password_generator'

def compare_them(expected_value, actual_result)
  if actual_result == expected_value
    putc "."
  else
    puts "F"
    puts "I expected #{expected_value} but got #{actual_result}"
  end
end

compare_them('t0g3th3r',   substitute('together'))
compare_them('sc0tch',     substitute('scotch'))
compare_them('0h10 st4t3', substitute('ohio state'))
compare_them('2nd3r',      substitute('under'))
compare_them('tmnplj',     substitute('tmnplj'))
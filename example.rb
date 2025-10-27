# rbs_inline: enabled

require_relative 'lib/calculator'

calc = Calculator.new

# 型エラー1: Integer を期待しているが String を渡す
result1 = calc.add(5, "10")
puts "加算結果: #{result1}"
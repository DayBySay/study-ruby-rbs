# rbs_inline: enabled

require_relative 'lib/calculator'

calc = Calculator.new

# 型エラー1: Integer を期待しているが String を渡す
result1 = calc.add("5", "10")
puts "加算結果: #{result1}"

# 型エラー2: Float を Integer として扱う
# divide は Float を返すが、add は Integer を期待している
result2 = calc.divide(10, 3)
sum = calc.add(result2, 5)
puts "除算後の加算: #{sum}"

# 型エラー3: nil を渡す
result3 = calc.multiply(nil, 5)
puts "乗算結果: #{result3}"

# 型エラー4: 文字列を subtract に渡す
result4 = calc.subtract(100, "20")
puts "減算結果: #{result4}"

# 型エラー5: divide の結果を Integer 変数として扱う
# @rbs division_result: Integer
division_result = calc.divide(20, 4)
puts "除算結果: #{division_result}"
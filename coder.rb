# Вводные данные

input_data='Приветус: велус, 道路. 更多的方式-'
keyword='Лето'

# Алгоритм шифровки

tmp = input_data.split(%r{[.]*}).each_with_index.map do |letter, i|
  letter = '#' if letter ==  ' '
  i.to_s + (letter + keyword).split(%r{[.]*}).shuffle.join
end

puts tmp.shuffle.join


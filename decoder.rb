# Вводные данные

input_data='15,теЛо5ттЛео6уЛоет4Лееот1Лторе25отЛе-7тЛеос3Лтвео17道тоеЛ11оЛеет10Лвеот18теЛ路о12лЛето22от的еЛ19ео#Лт21т多оеЛ24Ло式те16т#Лое23етЛо方20е更Лот13Лоету9оеЛт#14Лоест0теПоЛ8то:Ле2теоиЛ'
keyword='Лето'
f=keyword.split(//)
# puts f
# Алгоритм дешифровки

def decode(code, key)
  key = key.split ''
  # i = , т е Л о
  # memo = ''
  code.split('').reduce('') do |memo, i|
    if (index = key.find_index(i))
      key.delete_at index
      memo
    else
      i
    end
  end
end

puts input_data.scan(/(\d+)(\D+)/).sort_by {|i| i[0].to_i}.map { |_, i| decode i, keyword }.join
# input_data_array.collect! { |i,ii| ii.delete keyword }
# input_data_array.collect! { |i,ii| ii }

# puts input_data_array
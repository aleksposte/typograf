
# Ввод параметров в файл:

file_input_text = "tests/test_1.txt" # файл для обработки
file_output_text = "tests/outpout_file.txt" # файл для вывода
lang = "ru" # правила какого языка использовать для обработки (ru, en)

# Добавление дополнительных правил для обработки:

option = {}
option[:num_1] = true	# 1. Расстановка ссылок для эл. почты
option[:num_2] = false	# 2. Экранирование HTML
option[:num_3] = false	# 3. Замена перевода строки на
option[:num_4] = false	# 4. Расстановка тегов p и br
option[:num_5] = false	# 5. Удаление HTML-тегов
option[:num_6] = false	# 6. Расстановка ссылок	1110	
option[:num_7] = false	# 7. Нераз. пробел между числом и словом
option[:num_8] = false	# 8. Удаление пробелов в начале строки
option[:num_9] = false	# 9. 1 руб. → 1 ₽
option[:num_10] = false	# 10. Для открывающей скобки
option[:num_11] = false	# 11. Для запятой
option[:num_12] = false	# 12. Для открывающей кавычки
option[:num_13] = false	# 13. Замена заглавной буквы на строчную с добавлением ударения

rule = " "
if option[:num_1]; rule += " -e common/html/e-mail"; end
if option[:num_2]; rule += " -e common/html/escape"; end
if option[:num_3]; rule += " -e common/html/nbr"; end
if option[:num_4]; rule += " -e common/html/nbr"; end
if option[:num_5]; rule += " -e common/html/stripTags"; end
if option[:num_6]; rule += " -e common/html/url"; end
if option[:num_7]; rule += " -e common/nbsp/afterNumber"; end
if option[:num_8]; rule += " -e common/space/delLeadingBlanks"; end
if option[:num_9]; rule += " -e ru/money/ruble"; end
if option[:num_10]; rule += " -e ru/optalign/bracket"; end
if option[:num_11]; rule += " -e ru/optalign/comma"; end
if option[:num_12]; rule += " -e ru/optalign/quote"; end
if option[:num_13]; rule += " -e ru/other/accent"; end


# Отравка параметров в типограф:
all_options = "typograf -l #{lang} #{rule} #{file_input_text} > #{file_output_text}"
#puts all_options
system(all_options)




# # Вариант ввода параметров обработки текса через консоль:

# puts "Укажите файл для обработки (например: tests/test_2.txt)"
# file_input_text = gets.chomp
# puts "Укажите файл для вывода (например: tests/outpout_file.txt)"
# file_output_text = gets.chomp
# puts "Укажите язык обрабатываемого файла (ru, en)"
# lang = gets.chomp

# puts "Добавить правило обработки текста?(yes, no)" # Добавление правила.
# option_rules = gets.chomp

# if option_rules == "yes"
# 	puts "правила:" # Правила даны для примера, их больше.
# 	puts "1.Расстановка ссылок для эл. почты"
# 	puts "2.Экранирование HTML"

# 	puts "Укажите номер правила:"
# 	num_rule = gets.chomp

# 		if num_rule == '1'; rule = "-e common/html/e-mail" ;end
# 		if num_rule == '2'; rule = "-e common/html/escape" ;end
		
# else
# 	rule = " "
# end

# # Отравка параметров в типограф:
# #puts "typograf -l #{lang} #{rule} #{file_input_text}" " > " "#{file_output_text}"

# all_options = "typograf -l #{lang} #{rule} #{file_input_text} > #{file_output_text}"

# system(all_options)

# # end



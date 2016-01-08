
# Ввод параметров в файл:
class Typograf
attr_accessor :file_input, :file_output, :lang

def initialize(file_input, file_output, lang='ru')
	@file_input = file_input
	@file_output = file_output
	@lang = lang


# file_input = "tests/test_1.txt" # файл для обработки
# file_output = "tests/output_file.txt" # файл для вывода
# lang = "ru" # правила какого языка использовать для обработки (ru, en)

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
rule += " -e common/html/e-mail" 			if option[:num_1]
rule += " -e common/html/escape"    		if option[:num_2]
rule += " -e common/html/nbr"       		if option[:num_3]
rule += " -e common/html/nbr"       		if option[:num_4]
rule += " -e common/html/stripTags" 		if option[:num_5]
rule += " -e common/html/url" 				if option[:num_6]
rule += " -e common/nbsp/afterNumber" 		if option[:num_7]
rule += " -e common/space/delLeadingBlanks" if option[:num_8]
rule += " -e ru/money/ruble" 				if option[:num_9]
rule += " -e ru/optalign/bracket"			if option[:num_10]
rule += " -e ru/optalign/comma" 			if option[:num_11]
rule += " -e ru/optalign/quote" 			if option[:num_12]
rule += " -e ru/other/accent" 				if option[:num_13]

# Отравка параметров в типограф:
all_options = "typograf -l #{@lang} #{rule} #{@file_input} > #{@file_output}"
puts all_options
system(all_options)
end
end


#typograf = Typograf.new("tests/test_1.txt", "tests/output_file.txt", "ru")

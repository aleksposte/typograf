
# Ввод параметров в файл:
class Typograf
attr_accessor :file_input, :file_output, :option_rules, :lang

def initialize(file_input, file_output, option_rules, lang)
	@file_input = file_input
	@file_output = file_output
	@lang = lang
	@option_rules = option_rules

# Добавление дополнительных правил для обработки:
option = {}

option[@option_rules] = true

rule = " "
rule = " " 									if option[:rule_0]
rule += " -e common/html/e-mail" 			if option[:rule_1]
rule += " -e common/html/escape"    		if option[:rule_2]
rule += " -e common/html/nbr"       		if option[:rule_3]
rule += " -e common/html/nbr"       		if option[:rule4]
rule += " -e common/html/stripTags" 		if option[:rule5]
rule += " -e common/html/url" 				if option[:rule6]
rule += " -e common/nbsp/afterNumber" 		if option[:rule7]
rule += " -e common/space/delLeadingBlanks" if option[:rule8]
rule += " -e ru/money/ruble" 				if option[:rule9]
rule += " -e ru/optalign/bracket"			if option[:rule10]
rule += " -e ru/optalign/comma" 			if option[:rule11]
rule += " -e ru/optalign/quote" 			if option[:rule12]
rule += " -e ru/other/accent" 				if option[:rule13]

# Отравка параметров в типограф:
all_options = "typograf -l #{@lang} #{rule} #{@file_input} > #{@file_output}"

system(all_options)
end
end

# num_rule = gets.chomp

# rule = true
# rule = " -e common/html/e-mail "; if num_rule == '1'; end
# rule += " -e common/html/escape "; if num_rule == '2'; end

# puts rule

# 3.	common/html/nbr	Замена перевода строки на 
# 1115	end	
# 4.	common/html/pbr	Расстановка тегов p и br	1110	end	
# 5.	common/html/stripTags	Удаление HTML-тегов	1209	end	
# 6.	common/html/url	Расстановка ссылок	1110		
# 7.	common/nbsp/afterNumber	Нераз. пробел между числом и словом	510

option = {}
option[:num_1] = true	# 1. Расстановка ссылок для эл. почты
option[:num_2] = true	# 2. Экранирование HTML
option[:num_3] = true	# 3. Замена перевода строки на
option[:num_4] = true	# 4. Расстановка тегов p и br
option[:num_5] = true	# 5. Удаление HTML-тегов
option[:num_6] = true	# 6. Расстановка ссылок	1110	
option[:num_7] = true	# 7. Нераз. пробел между числом и словом

rule = " "
if option[:num_1]; rule += " -e common/html/e-mail"; end
if option[:num_2]; rule += " -e common/html/escape"; end
if option[:num_3]; rule += " -e common/html/nbr"; end
if option[:num_4]; rule += " -e common/html/nbr"; end
if option[:num_5]; rule += " -e common/html/stripTags"; end
if option[:num_6]; rule += " -e common/html/url"; end
if option[:num_7]; rule += " -e common/nbsp/afterNumber"; end

puts rule
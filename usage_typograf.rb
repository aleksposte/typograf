# Использование:
# Подключаем:
require "./typograf"

# Указываем файлы для ввода, вывода, язык:
file_input = "tests/test_1.txt"
file_output = "tests/output_file.txt"
lang = "ru"

# Отправляем в файл скрипта:
typograf = Typograf.new(file_input, file_output, lang)



## Typograf

#### Файлы для тестирования

+ находятся /tests
+ использовал:  https://github.com/samdark/Typograph/tree/master/tests


### Для работы типографа необходим Node.js

---

### Установка Node.JS 


#### Mac OS:


###### Устанавливаем Homebrew (Менеджер недостающих пакетов для OS X)

```
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

###### Затем Node.js

```
brew install node
```

###### Проверяем

```
node -v
```

#### Linux:

###### Копируем с сайта nodejs.org ссылку на свежую версию, распаковываем:

```
https://nodejs.org/dist/v4.2.3/node-v4.2.3-linux-x64.tar.gz

tar -xvf node-v0.1.97.tar.gz

cd node*
./configure
```

###### Собираем в пакет и устанавливаем:

```
checkinstall --fstrans=no --install=no --pkgname=node.js --pkgversion "4.2.3" --default
```

###### Проверяем

```
node -v
```

#### Windows:


###### С сайта nodejs.org скачиваем инсталлятор и устанавливаем.

```
https://nodejs.org
```
---


### Установка модуля типографа на js:

```
npm install typograf-cli -g
```
---


### Использование типографа:

###### Подключить файл:

```ruby
require "./typograf"
```

###### Указать путь к файлу для обработки:

```ruby
file_input = "tests/input_file.txt"
```

###### Указать путь к файлу для вывода результата:

```ruby
file_output = "tests/output_file.txt"
```

###### Указать, по правилам какого языка обрабатывать файл (ru, en, по умолчанию - ru)

```ruby
lang = 'ru'
```

###### Ели необходимо, указать дополнительные правила для обработки:

```ruby
option_rules = :rule_0
```

###### Отправить данные в файл скрипта:

```ruby
typograf = Typograf.new(file_input, file_output, option_rules, lang)
```

---
###### Список дополнительных правил для обработки:

```
:rule_1 - Расстановка ссылок для эл. почты
:rule_2 - Экранирование HTML
:rule_3 - Замена перевода строки на
:rule_4 - Расстановка тегов p и br
:rule_5 - Удаление HTML-тегов
:rule_6 - Расстановка ссылок
:rule_7 - Нераз. пробел между числом и словом
:rule_8 - Удаление пробелов в начале строки
:rule_9 - 1 руб. → 1 ₽
:rule_10 - Для открывающей скобки
:rule_11 - Для запятой
:rule_12 - Для открывающей кавычки
:rule_13 - Замена заглавной буквы на строчную с добавлением ударения
```
---











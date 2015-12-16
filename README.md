# Typograf

# Файлы для тестирования

 * находятся /tests
 * использовал:  https://github.com/samdark/Typograph/tree/master/tests

# Для работы типографа необходим Node.js

	* Установка Node.JS 
		Mac OS:
			* Устанавливаем Homebrew (Менеджер недостающих пакетов для OS X)

			ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

			* Затем Node.js

			brew install node

			* Проверяем

			node -v
		
		Linux:
			* Копируем с сайта nodejs.org ссылку на свежую версию, устанавливаем:

			https://nodejs.org/dist/v4.2.3/node-v4.2.3-linux-x64.tar.gz

			tar -xvf node-v0.1.97.tar.gz

			cd node*
			./configure

			* Собрать в пакет и установить:

			checkinstall --fstrans=no --install=no --pkgname=node.js --pkgversion "4.2.3" --default


		Windows:
			* С сайта nodejs.org скачиваем инсталлятор и устанавливаем.

	* Установка typograf на js

		npm install typograf-cli -g

		typograf — вывод справки.












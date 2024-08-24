## Update

This fork is what I modified on the original WhiteCat Logcleaner utility. Following enhancements / fixes are added:

- Fixed memory leak issue
- Rewrote the regular expression functions with new data structures
- Rewrote the `xgethostname` function
- Added the `DEBUG` macro to print more debugging information

## Original README

WhiteCat logcleaner version 1.0 [edition]

Данная утилита предназначена для системных администраторов для:

 1. Контроля размера лог-файлов на сервере
 2. Для проверки на уязвимость своего сервера на возможность доступа к лог-файлам сервера

 Любое иное использование скрипта преследуется по закону

 Клинеры все эти конечно круто, но во многих по умолчанию не прописаны пути к логам(apache access & error logs), приходится часто задавать вручную, а можно автоматизировать, поэтому ми несколько изменил witecat и добавил свои пути к логам + возможность добавлять пути к логам самостоятельно.

 Пути к логам находятся в массиве APACHE_PATH[] (стр. 54, файл witecat.c). Чтобы добавить новый путь - просто добавьте строчку в массив, соблюдая запятые. Во время работы при попытке обработать несуществующий путь ошибки не вываливаются. 

(поддержка FreeBSD, Linux, SOLARIS)

 Компиляция: gcc whitecat.c -o whitecat

 Запуск(например хотим почистить свой ip в логах):

 ./whitecat -u root -a 127.0.0.1

 Скрипт кстати можно использовать как локальный брутер путей к логам, т.к. если найдет - отпишется (в данной версии 52 уникальных путей к логам).

 В APACHE_PATH[] можно добавлять только текстовые логи

 PS: На основе whitecat 1.1, код брал прямо из темы отсюда:

 http://forum.antichat.ru/threadnav36595-4-10-whitecat.html


Алгоритм, конечно, не был рассчитан изначально на огромные файлы логов (неизвестно еще, сколько места на диске).

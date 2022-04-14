# hw_1_bespechnayatanya
my first homework on the course of Vadim Ksendzov

1) Посмотреть где я 
 pwd

2) Создать папку
 mkdir

3) Зайти в папку 
 cd namefolder

4) Создать 3 папки 
 mkdir papka1 papka2 papka3 ИЛИ mkdir papka{1..3}

5) Зайти в любоую папку 
 cd papka1

6) Создать 5 файлов (3 txt, 2 json) 
 touch 1.json 2.json 1.txt 2.txt 3.txt

7) Создать 3 папки 
 mkdir papka4 papka5 papka6 ИЛИ mkdir papka{4..6}

8. Вывести список содержимого папки 
 ls -la

9) + Открыть любой txt файл 
cat >> 1.txt ИЛИ vim 1.txt 

10) + написать туда что-нибудь, любой текст. 
 enter -> ввод текста ИЛИ "i" (--INSERT--) -> ввод текста

11) + сохранить и выйти. 
 enter -> contl+c ИЛИ esc -> :wq

12) Выйти из папки на уровень выше 
 cd ..

13) переместить любые 2 файла, которые вы создали, в любую другую папку. 
 mv papka1/1.txt papka2/1.txt 
 mv papka1/2.txt papka2/2.txt

14) скопировать любые 2 файла, которые вы создали, в любую другую папку. 
 cp papka2/1.txt papka3/1.txt 
 cp papka2/2.txt papka3/2.txt 

15) Найти файл по имени 
 find . -name 1.txt 
 find . -name *.txt - найти все файлы txt

16) просмотреть содержимое в реальном времени (команда grep) изучите как она работает.
 grep шаблон 1.txt - ищет "шаблон" в файле
 grep -i шаблон 1.txt - исколючает регистр
 grep -v шаблон 1.txt - исключает "шаблон" из выборки
 grep -с шаблон 1.txt - считает количество строк с "шаблон"
 grep -R шаблон papka2 - находит "шаблон" во всей папке 

17) вывести несколько первых строк из текстового файла 
 head 1.txt

18) вывести несколько последних строк из текстового файла
 tail -f 1.txt

19) просмотреть содержимое длинного файла (команда less) изучите как она работает. 
 less 1.txt
cd
20) вывести дату и время
 date

--------------
1) Отправить http запрос на сервер.
http://162.55.220.72:5005/terminal-hw-request
curl "http://162.55.220.72:5005/terminal-hw-request" ->
curl "http://162.55.220.72:5005/get_method?name=tanya&age=24"
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100    15  100    15    0     0     47      0 --:--:-- --:--:-- --:--:--    47["tanya","24"]

2) Написать скрипт который выполнит автоматически пункты 3, 4, 5, 6, 7, 8, 13
nano myscript.sh
#!/bin/bash
echo "first script"
cd papka1
mkdir papka{7..9}
cd papka7
touch sc_{1..3}.txt sc_{4..5}.json
mkdir papka{10..12}
ls -la
cd ..
mv papka7/{sc_1.txt,sc_4.json} papka8
echo "done"
cntl+x->y->enter->./myscript1.sh

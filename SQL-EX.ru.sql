1)Найдите номер модели, скорость и размер жесткого диска для всех ПК стоимостью менее 500 дол. Вывести: model, speed и hd.
SELECT model, speed, hd
From PC
Where price < 500

===================================

2)Найдите производителей принтеров. Вывести: maker.
Select distinct maker
From product
Where type = 'Printer'

===================================

3)Найдите номер модели, объем памяти и размеры экранов ПК-блокнотов, цена которых превышает 1000 дол.
Select model, ram, screen
From Laptop
Where price > 1000

===================================

4)Найдите все записи таблицы Printer для цветных принтеров.
Select *
From printer
Where color = 'y'

===================================

5)Найдите номер модели, скорость и размер жесткого диска ПК, имеющих 12x или 24x CD и цену менее 600 дол.
Select model, speed, hd
From PC
Where cd in ('12x','24x') AND price < 600

===================================

6)Для каждого производителя, выпускающего ПК-блокноты c объёмом жесткого диска не менее 10 Гбайт, найти скорости таких ПК-блокнотов. Вывод: производитель, скорость.
Select distinct product.maker, laptop.speed
From product, laptop
Where product.model = laptop.model AND laptop.hd >=10

===================================

7)Найдите номера моделей и цены всех имеющихся в продаже продуктов (любого типа) производителя B (латинская буква).
SELECT a.model, price 
FROM (SELECT model, price 
FROM PC 
UNION
SELECT model, price 
FROM Laptop
UNION
SELECT model, price 
FROM Printer)
 AS a JOIN 
 Product p ON a.model = p.model
WHERE p.maker = 'B'

===================================

8)Найдите производителя, выпускающего ПК, но не ПК-блокноты.

===================================

9)Найдите производителей ПК с процессором не менее 450 Мгц. Вывести: Maker.

===================================

10)Найдите модели принтеров, имеющих самую высокую цену. Вывести: model, price.

===================================

11)Найдите среднюю скорость ПК.

===================================

12)Найдите среднюю скорость ПК-блокнотов, цена которых превышает 1000 дол.

===================================

13)Найдите среднюю скорость ПК, выпущенных производителем A.

===================================

14)Найдите класс, имя и страну для кораблей из таблицы Ships, имеющих не менее 10 орудий.

===================================

15)Найдите размеры жестких дисков, совпадающих у двух и более PC. Вывести: HD.

===================================

16)Найдите пары моделей PC, имеющих одинаковые скорость и RAM. В результате каждая пара указывается только один раз, т.е. (i,j), но не (j,i), Порядок вывода: модель с большим номером, модель с меньшим номером, скорость и RAM.

===================================

17)Найдите модели ПК-блокнотов, скорость которых меньше скорости каждого из ПК.
Вывести: type, model, speed

===================================

18)Найдите производителей самых дешевых цветных принтеров. Вывести: maker, price.

===================================

19)Для каждого производителя, имеющего модели в таблице Laptop, найдите средний размер экрана выпускаемых им ПК-блокнотов.
Вывести: maker, средний размер экрана.

===================================

20)Найдите производителей, выпускающих по меньшей мере три различных модели ПК. Вывести: Maker, число моделей ПК.

===================================

21)Найдите максимальную цену ПК, выпускаемых каждым производителем, у которого есть модели в таблице PC.
Вывести: maker, максимальная цена.

===================================

22)Для каждого значения скорости ПК, превышающего 600 МГц, определите среднюю цену ПК с такой же скоростью. Вывести: speed, средняя цена.

===================================

23)Найдите производителей, которые производили бы как ПК
со скоростью не менее 750 МГц, так и ПК-блокноты со скоростью не менее 750 МГц.
Вывести: Maker.

===================================

24)Перечислите номера моделей любых типов, имеющих самую высокую цену по всей имеющейся в базе данных продукции.

===================================

25)Найдите производителей принтеров, которые производят ПК с наименьшим объемом RAM и с самым быстрым процессором среди всех ПК, имеющих наименьший объем RAM. Вывести: Maker.

===================================

26)Найдите среднюю цену ПК и ПК-блокнотов, выпущенных производителем A (латинская буква). Вывести: одна общая средняя цена.

===================================

27)Найдите средний размер диска ПК каждого из тех производителей, которые выпускают и принтеры. Вывести: maker, средний размер HD.

===================================

28)Используя таблицу Product, определить количество производителей, выпускающих по одной модели.

===================================

29)В предположении, что приход и расход денег на каждом пункте приема фиксируется не чаще одного раза в день [т.е. первичный ключ (пункт, дата)], написать запрос с выходными данными (пункт, дата, приход, расход). Использовать таблицы Income_o и Outcome_o.

===================================

30)В предположении, что приход и расход денег на каждом пункте приема фиксируется произвольное число раз (первичным ключом в таблицах является столбец code), требуется получить таблицу, в которой каждому пункту за каждую дату выполнения операций будет соответствовать одна строка.
Вывод: point, date, суммарный расход пункта за день (out), суммарный приход пункта за день (inc). Отсутствующие значения считать неопределенными (NULL).

===================================
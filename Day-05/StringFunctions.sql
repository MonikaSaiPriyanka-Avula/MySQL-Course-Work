-- ===========================
-- STRING FUNCTIONS
-- =============================
-- 1. CHAR_LENGTH(str) OR CHRACTER_LENGTH(str)
select char_length('Hello');
select char_length('Mounasru123');

-- 2. CONCAT(str1, str2)
select concat('Hello ','mounasri');
select concat('python ', 'language');

-- 3. CONCAT_WS(' ,', str1,str2)
select concat_ws(',' , 'python','java','css');

-- 4. UPPER (str)
select upper("hello");

-- 5. lower(str)
select lower('MOUNASRI');

-- 6. LEFT (str,len)
select left('database',6);

-- 7.RIGHT(str,len)
select right('database',5);

-- 8. SUBSTRING(str,len)
select substring('datbase', 6);
select substring('mounasri',3);

-- 9. LOCATE
select locate('a','mounasri');
select locate('s','mounasri');

-- 10. REPLACE(str,from_str,to_str)
select replace('xxxxxxxxxhelloxxxxxx','x','');

-- 11. TRIM([leading |trailing |both] remstr from str)
select trim('Hello    world');
select trim(both 'a' from 'aaaaaaaaaaaahello bbbbbbbbworld  aaaaaaaaaaaaa');

-- 12. LTRIM('str')
SELECT ltrim(' Hello');

-- 13. RTRIM(str)
SELECT RTRIM('hello   ');

-- 14. RPAD(str, len, padstr)
select rpad('123',8,'*');

-- 15. LPAD(str,len,padstr)
select lpad('1238',10,'0');

-- 16.REVERSE(str)
select reverse('MYSQL');

-- 17. REPEAT(str,count)
select repeat('MYSQL-',4);



-- Current_Date / Curdate
select current_date();
select curdate();

-- Current_Time / Curtime
select current_time();
select curtime();

-- Now / Curent_Timestamp
select now();
select current_timestamp();

-- Date()
select date('2026-12-12');

-- Time()
select time('2025-09-23 23:45:00');

-- Year(), Month(), Day()
select year(now());
select month(now());
select day(now());

-- DayName(), MonthName()
select dayname(now());
select monthname(now());

-- Date_Add(), AddDate()
select date_add(now(), interval 20 day);
select adddate(now(), interval 2 month);

-- Date_Sub / SubDate
select date_sub(now(), interval 3 day);
select subdate(now(), interval 3 month);

-- Datediff()
select datediff(now(), '2026-09-12');

-- Timediff()
select timediff('09:15:00', '10:30:00');

-- Date_format
select date_format(now(), '%W %M %Y');
select date_format(now(), '%d-%m-%Y %H:%i:%s');


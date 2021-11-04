-- 1. ������� ��� ���� � ��� ������
select * from students;
--2. ������� ���� ��������� � �������
select name from students;
-- 3. ������� ������ Id �������������
select Id from students;
--4. ������� ������ ��� �������������
select name from students;
--5. ������� ������ email �������������
select email from students;
--6. ������� ��� � email �������������
select email, name from students;
--7.������� id, ���, email � ���� �������� �������������
select email, name, ID, created_on from students;
--8. ������� ������������� ��� password 12333
select * from students
where password = '12333';
--9.  ������� ������������� ������� ���� ������� 2021-03-26 00:00:00
select * from students 
where created_on = '2021-03-26 00:00:00';
--10. ������� ������������� ��� � ����� ���� ����� ����
select * from students
where name like '����%';
--11. ������� ������������� ��� � ����� � ����� ���� 8
select * from students
where name like '%8';
--12. ������� ������������� ��� � ����� � ���� ����� �
select * from students
where name like '%�%';
--13. ������� ������������� ������� ���� ������� 2021-07-12 00:00:00
select * from students 
where created_on = '2021-07-12 00:00:00';
--14. ������� ������������� ������� ���� ������� 2021-07-12 00:00:00 � ����� ������ 1m313
select * from students 
where created_on = '2021-07-12 00:00:00' and password = '1m313';
--15. ������� ������������� ������� ���� ������� 2021-07-12 00:00:00 � � ������� � ����� ���� ����� Andrey
select * from students 
where created_on = '2021-07-12 00:00:00' and name like 'Andrey%';
-- 16. ������� ������������� ������� ���� ������� 2021-07-12 00:00:00 � � ������� � ����� ���� ����� 8
select * from students 
where created_on = '2021-07-12 00:00:00' and name like '%8%';
-- 17. ������� ������������ � ������� id ����� 10
select * from students
where ID = 10;
--18. ������� ������������ � ������� id ����� 53
select * from students
where ID = 53;
--19. ������� ������������ � ������� id ������ 40
select * from students
where ID > 40;
--20. ������� ������������ � ������� id ������ 30
select * from students
where ID < 30;
--21. ������� ������������ � ������� id ������ 27 ��� ������ 88
select * from students
where ID < 27 or ID > 88;
--22. ������� ������������ � ������� id ������ ���� ����� 37
select * from students
where ID <= 37;
--23. ������� ������������ � ������� id ������ ���� ����� 37
select * from students
where ID >= 37;
--24. ������� ������������ � ������� id ������ 80 �� ������ 90
select * from students
where ID > 80 and ID < 90;
--25. ������� ������������ � ������� id ����� 80 � 90
select * from students
where ID between  80 and 90;
--26. ������� ������������� ��� password ����� 12333, 1m313, 123313
select * from students
where (password = '12333' or password = '1m313' or password = '123313');
--27. ������� ������������� ��� created_on ����� 2020-10-03 00:00:00, 2021-05-19 00:00:00, 2021-03-26 00:00:00
select * from students
where (created_on = '2020-10-03 00:00:00' or created_on = '2021-05-19 00:00:00' or created_on = '2021-03-26 00:00:00');
-- 28. ������� ����������� id 
select MIN(ID) AS SmallestID
FROM students;
--29. ������� ������������.
select MAX(ID) AS LargestID
FROM students;
--30. ������� ���������� �������������
select COUNT(name)
FROM students;
--31. ������� id ������������, ���, ���� �������� ������������. ������������� �� ������� ����������� ���� ���������� �������������.
select name, ID, created_on from students
ORDER BY created_on asc;
--32. ������� id ������������, ���, ���� �������� ������������. ������������� �� ������� �������� ���� ���������� �������������.
select name, ID, created_on from students
ORDER BY created_on DESC;
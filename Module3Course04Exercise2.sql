USE quanlysinhvien;

SELECT s.*
FROM subject s, (SELECT MAX(Credit) AS max FROM subject) AS result
WHERE s.Credit = result.max;

SELECT s.*
FROM subject s, mark m, 
(SELECT MAX(Mark) AS max FROM mark) AS result
WHERE s.SubId = m.SubId
AND m.Mark = result.Max;

SELECT s.StudentName, AVG(m.Mark)
FROM student s INNER JOIN mark m
ON s.StudentId = m.StudentId
GROUP BY s.StudentName DESC;
1.1 select distinct(col1), col2 from InputTbl where col1 < col2
1.2 select col1, col2 from InputTbl where col1 < col2 group by col1, col2
2. select * from TestMultipleZero where A<>0 or B<>0 or C<>0 or D<>0;
3. select * from section1 where id%2=1
4. Select top 1 * from section1 order by id
5. Select top 1 * from section1 order by id desc
6. select name from section1 where name like ('B%')
7.select * from ProductCodes where Code like ('%1__%') escape 1

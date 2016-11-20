create or replace trigger q1
after delete on emp for each row
declare

	uname varchar(10);
begin

select username into uname from user_users;
-- retreivining name of the current user

insert into delemp values(:old.empno,:old.ename,:old.job,:old.mgr,:old.hiredate,:old.sal,:old.comm,:old.deptno,uname,sysdate);
-- with triggers oracle automatically creates 2 types of variables called -- :old and :new with the same name as that of the columns of the 
-- table on which the trigger is written
dbms_output.put_line('bye');
end;
/
create or replace trigger q11
before delete on emp for each row

begin

	dbms_output.put_line('hello');

end;
/

declare
	eno emp.empno%type := &empno;
	xjob emp.job%type;
	xsal emp.sal%type;
begin
select job,sal into xjob,xsal from emp where empno=eno;
dbms_output.put_line('old salary = '||xsal);	
if xjob = 'PRESIDENT' then
	xsal := xsal*1.1;
elsif xjob = 'MANAGER' then
	xsal :=xsal*1.2;
elsif xjob = 'ANALYST' then
	xsal := xsal*1.25;
else
	xsal :=xsal+2000;
end if;
dbms_output.put_line('new salary = '||xsal);	

update emp
set sal = xsal where empno = eno;
-- writing the incremented salary back to the table
commit;
end;
/






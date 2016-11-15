declare
	eno emp.empno%type := &empno;		 
-- declares eno to have the same type as empno 	of emp table
	enm emp.ename%type;	
	sl emp.sal%type;
begin

select ename,sal into enm,sl from emp where empno = eno;	

dbms_output.put_line('name = '||enm||' salary = '||sl);

end;
/
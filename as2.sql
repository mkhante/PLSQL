declare
 
	eno emp.empno%type := &empno;
	jdate date;
begin

select hiredate into jdate from emp where empno = eno;

if to_char(sysdate,'mon')=to_char(jdate,'mon') then

	dbms_output.put_line('welcome');
else
	dbms_output.put_line('keep waiting');	
end if;

end;
/

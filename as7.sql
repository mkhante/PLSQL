declare
	oname varchar(10) := '&name';
	cname varchar(10);
	x number(2);
begin
	x := length(oname);
	for y in 1..x
	loop	
	
	if y mod 2 <> 0 then
		cname := cname ||upper(substr(oname,y,1));	
	else
		cname := cname || substr(oname,y,1);
	end if;
	dbms_output.put_line(cname);
	end loop;

end;
/

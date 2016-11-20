declare
	x number(2) := 1;
begin
	while x <= 5
	loop


		x:=x+1;
		dbms_output.put_line(x);	
		exit when x = 3;

	end loop;
end;
/
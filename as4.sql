declare

	x number(2) :=6;

begin
	loop

		exit when x = 5;
		dbms_output.put_line(x);


		x :=x+1;
	end loop;
end;
/
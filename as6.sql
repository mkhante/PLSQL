declare



begin

	for x in reverse 1..10
	loop

		dbms_output.put_line(x);

	end loop;

end;
/
program Abstracao;

function f(x : integer) : integer;
begin
  f := x + 10;
end;

procedure p();
begin 
  writeln(f(5));
end;

begin
  writeln (f(10));
  p();
end.


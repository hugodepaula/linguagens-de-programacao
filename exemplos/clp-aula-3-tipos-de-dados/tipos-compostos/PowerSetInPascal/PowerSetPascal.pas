Program PowerSetPascal(output);
type
   Cor = (vermelho , azul , verde , amarelo ) ;
   ConjCores = set of Cor ;
   Letras = set of char ;
var
   conj1 : ConjCores ;
   vogais : Letras ; 
   ch : char ;
begin
   conj1 := [ vermelho , verde ] ;
   vogais := [ 'a', 'e', 'i', 'o' , 'u'] ;
   
   if vermelho in conj1 then
   begin
      writeln('Conjunto possui vermelho');
   end;
   
   ch := 't';
   
   if ch in vogais then 
   begin
      writeln('ch é uma vogal');
   end
end.
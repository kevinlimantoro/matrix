program matrix;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  matriks,matriks2,temp: array [1..3,1..3] of integer;
  i,j,k,l: integer;
  n: integer=3;
begin
{ TODO -oUser -cConsole Main : Insert code here }
k:=0;
while k<>6 do
begin
writeln('1.input');
writeln('2.view');
writeln('3.operasi + dan -');
writeln('4.operasi kali');
writeln('5.transpose');
writeln('Pilihan anda : ');readln(k);

if k=1 then
  for i:=1 to n do
  begin
    for j:=1 to n do
    begin
    writeln('masukkan angka ',i,',',j); readln(matriks[i,j]);
    matriks2[i,j]:=matriks[i,j];
    end;
  end

  else if k=2 then
  begin
  writeln('matriks 1');
  for i:=1 to n do
  begin
    for j:=1 to n do
    begin
    write(matriks[i,j]);
    end;writeln;
  end;
       writeln;
  writeln('matriks 2');
  for i:=1 to n do
  begin
    for j:=1 to n do
    begin
    write(matriks2[i,j]);
    end;writeln;
  end;
  readln;
  end

  else if k=3 then
  begin
  writeln('hasil +');
  for i:=1 to n do
  for j:=1 to n do
  temp[i,j]:=matriks[i,j]+matriks2[i,j];

   for i:=1 to n do
  begin
    for j:=1 to n do
    begin
    write(temp[i,j],' ');
    end;writeln;
  end;
    writeln('hasil -');
   for i:=1 to n do
  for j:=1 to n do
  temp[i,j]:=matriks[i,j]-matriks2[i,j];

   for i:=1 to n do
  begin
    for j:=1 to n do
    begin
    write(temp[i,j],' ');
    end;writeln;
  end;
  readln;
  end

  else if k=4 then
  begin
  for i:=1 to n do
    begin
    for j:=1 to n do
      begin
        temp[i,j]:=0;
        for l:=1 to n do
        begin
        temp[i,j]:=temp[i,j]+(matriks[i,l]*matriks2[l,j]);
        end;
      end;
    end;

     for i:=1 to n do
  begin
    for j:=1 to n do
    begin
    write(temp[i,j],' ');
    end;writeln;
  end;
  readln;
  end


  else if k=5 then
  begin
  for i:=1 to n do
  begin
    for j:=1 to n do
    begin
    temp[j,i]:=matriks[i,j];
    end;
  end;

  for i:=1 to n do
  begin
    for j:=1 to n do
    begin
    matriks[i,j]:=temp[i,j];
    end;
  end;

  for i:=1 to n do
  begin
    for j:=1 to n do
    begin
    write(matriks[i,j]);
    end;writeln;
  end;
  end;



  end;

end.

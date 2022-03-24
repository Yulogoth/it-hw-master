﻿Program homework;
    var a,b,c,max,min,sr:real;                                                  //Вводим переменные для сторон нашего треугольника
begin
    writeln ('>>> Введите стороны треугольника...');                            //Текст в каждом writeln('текст'); лучше изменить на свой
        readln (a,b,c);                                                         //Вводим стороны треугольника
    if (a+b>c) and (a+c>b) and (c+b>a)                                          //Делаем проверку на существование треугольника
        then
            begin 
            if (a=b) and (a=c) and (b=c)                                        //Проверяем, равносторонний ли треугольник?
                then
                    writeln ('>>> Треугольник - равносторонний')                //Если да - выводим сообщение
            else begin                                                          //Если нет - идём дальше...
                if (a=b) or (a=c) or (b=c)                                      //Проверяем, равнобедренный ли треугольник? 
                    then
                        writeln ('>>> Треугольник - равнобедренный!')           //Если да - выводим сообщение
                else begin                                                      //Проверяем, прямоугольный ли треугольник?
                    if a>b then max:=a else max:=b;
                    if c>max then max:=c;
                    if a<b then min:=a else min:=b;
                    if c<min then min:=c;
                    sr:=a+b+c-max-min;
                    if min*min+sr*sr=max*max 
                        then 
                            writeln('>>> Треугольник - прямоугольный!')         //Выводим сообщение о том, что треугольник - прямоугольный 
                    else
                        writeln('>>> Треугольник - разносторонний!');           //выводим сообщение о том, что треугольник - разносторонний
                    end;
            end;
        end;    
    else
        writeln ('>>> Треугольника с заданными сторонами не существует...');    //Если треугольник не прошёл проверку на существование -
end.                                                                            //выводим сообщение

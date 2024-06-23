# !/bin/bash
#Programa para revisar los tipos de operadores
# Author: Luis Antonio Preza - anibulusnn@gmail.com

echo "Operadores aritmeticos"
echo "Dame un numero"
read num1
echo "Dame otro numero"
read num2

echo "Operadores aritmeticos"
echo "Sumar $num1 + $num2 = $((num1 + num2))"
echo "Restar $num1 - $num2 = $((num1 - num2))"
echo "Multiplicar $num1 * $num2 = $((num1 * num2))"
echo "Dividir $num1 / $num2 = $((num1 / num2))"
echo "Residuo $num1 % $num2 = $((num1 % num2))"


echo -e "\n Operadores relacionales"
echo "$num1 < $num2 = $((num1 < num2))"
echo "$num1 > $num2 = $((num1 > num2))"
echo "$num1 <= $num2 = $((num1 <= num2))"
echo "$num1 >= $num2 = $((num1 >= num2))"
echo "$num1 == $num2 = $((num1 == num2))"
echo "$num1 != $num2 = $((num1 != num2))"


echo -e "\n Operadores asignacion"
echo "Sumar $num1 += $num2 = $((num1 += num2))"
echo "Restar $num1 -= $num2 = $((num1 -= num2))"
echo "Sumar $num1 *= $num2 = $((num1 *= num2))"
echo "Sumar $num1 /= $num2 = $((num1 /= num2))"
echo "Sumar $num1 %= $num2 = $((num1 %= num2))"





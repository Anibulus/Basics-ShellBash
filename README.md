Mas ejemplos de cosigo con bash
https://devhints.io/bash

Nota, para ejecutarse adecuadamente, toca agregar 
chmod -x [archivo]

Ofuscar tu codigo en bash
https://blog.desdelinux.net/como-ofuscar-u-ocultar-codigo-de-nuestros-scripts-bash/



Glosario

Diferencia entre [  ] y [[  ]]
Type	viejo [ comando ]	nuevo [[ comando ]]	Example
Cadena	>	>	[[ a > b ]]
Cadena	<	<	[[ a < b ]]
Cadena	!=	!=	[[ a != b ]]
Cadena	=	= or ==	[[ a = b ]]
Numero	-ge	-ge	[[ a -ge b ]]
Numero	-le	-le	[[ a -le b ]]
Numero	-lt	-lt	[[ a -lt b ]]
Numero	-gt	-gt	[[ a -gt b ]]
Concatenar	-a	&&	[[ -n $var && -f $var ]]
Concatenar	-o	`	
Agrupar	(...)	(...)	`[[ $var = img* && ($var = *.png
Patrones	-	= or ==	[[ $name = a* ]]
Patrones	-	=~	[[ $(date) =~ ^Fri\ ...\ 13 ]]

ejemplos:

if [ "$answer" = y -o "$answer" = yes ] if [[ $answer =~ ^y(es)?$ ]] if [[ $answer = y* ]]
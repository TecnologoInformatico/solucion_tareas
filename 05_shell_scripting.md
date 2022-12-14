# Shell scripting

[馃敆 classroom](https://classroom.github.com/a/zQOpPjs6)

Genere un script que sirva para crear nuevos scripts, tal que:

1. Se crear谩 un archivo en la ubicaci贸n pasada por argumento.
2. El archivo deber谩 ser ejecutable por el usuario.
3. En la cabecera se ingresar谩:
   1. Shebang.
   2. Una breve descripci贸n de la funci贸n del script opcional pasada por argumento. Texto pasado por argumento `-d`.
   3. El modo de uso, argumentos pasados. `-u`
   4. Author pasado por argumento, o usuario en la config de git o nombre de usuario del sistema. `-a`
   5. Correo del Autor, pasado por argumento o correo de la config global de git. `-e`
   6. Fecha de creaci贸n.

> En la primer iteraci贸n se puede utilizar argumentos posicionales en lugar de las banderas -d -u -a y -e.

Ejemplo de ejecuci贸n:

```bash
mkscrip.bash \
    -d "Script para crear scripts con descripci贸n." \
    -u "-h (ayuda) -d (descripci贸n) scriptname" \
    -a "Diego Mascheroni" \
    -e "diego.mascheroni@utec.edu.uy" \
    ~/miscrpit.bash
```

Resultado:

```bash
#!/bin/bash

###################################################################
# Script Name: mkscrip.bash
# Description: Script para crear scripts con descripci贸n.
# Args: -h (ayuda) -d (descripci贸n) scriptname
# Author: Diego Mascheroni
# Email: diego.mascheroni@utec.edu.uy
# Date: 08/09/2022
###################################################################

function help ()
{
    echo "Script para crear scripts con descripci贸n."
    echo "modo de uso: -h (ayuda)"
    echo "Author: Diego Mascheroni | email: diego.mascheroni@utec.edu.uy"
    return 0
}

```

## Posible soluci贸n

- [Script](05_shell_scripting.bash)

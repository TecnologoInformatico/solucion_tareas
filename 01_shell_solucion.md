# Tarea

[🔗 classroom](https://classroom.github.com/a/giJcA0wq)

1. Cree el Directorio 'sandbox' en su directorio home.
   1. `mkdir ~/sandbox`
2. Cree el archivo test.txt dentro del directorio recién creado, sin moverse. Registre en la sección de solución distintas alternativas para crear el archivo.
   1. `touch ~/sandbox/test.txt`
   2. `echo >> ~/sandbox/test.txt`
   3. `vi ~/sandbox/test.txt`
3. Muevase al directorio antes creado y agregue dos nuevos directorios, directorio_01 y directorio_02.
   1. `cd ~/sandbox`
   2. `mkdir directorio_01 directorio_02`
4. Genere 10 archivos dentro de `directorio_01` con nombre `archivo_01` hasta `archivo_10`.
   1. `touch directorio_01/archivo_{01..10}`
5. mueva el directorio `directorio_01` a `directorio_02`, ¿que sucedió?
   1. `mv directorio_01 directorio_02`
      El directorio 01 queda dentro del 02.
6. Intente lo del punto anterior con un directorio que no exista `directorio_03`, registre lo sucedido.
   1. `mv directorio_02/directorio_01 directorio_03`
7. Restablezca el `directorio_01` a su lugar original.
   1. `mv directorio_03 directorio_01`
8. Genere un hardlink del `archivo_10` en el directorio 02, con el nombre `archivo_x`.
   1. `ln directorio_01/archivo_10 directorio_02/archivo_x`
9. Cargue en el `archivo_10` el listado de archivos del `directorio_02`.
   1. `ls ~/sandbox/directorio_02 >> ~/sandbox/directorio_01/archivo_10`.
10. Genere un soft link en el directorio `sandbox` de nombre archivo que apunte al archivo 01.
    1. `ln -s ~/sandbox/directorio_01/archivo_01 ~/sandbox/archivo`
11. En el directorio 02 cree un archivo con nombre `raiz` tal que contenga el listado de archivos en el directorio raíz.
    1. `ls / > directorio_02/raiz`
12. Cree a su vez los archivos `home` y `sandbox`, tal que el primero contenga el listado de *todos* los archivos de su directorio home, y el segundo contenga un listado con el contenido del directorio `sandbox` así como de sus sub directorios.
    1. `ls -Ra ~ > home; ls -R ~/sandbox sandbox`
13. Elimine el `directorio_01`, ¿que ocurrió con el hardlink del directorio 2?
    1. `rm -rf directorio_01`
    2. El hardlink sigue como si nada.
14. Genere un archivo oculto en el directorio `sandbox` de nombre `historial` que contenga todos los pasos realizados hasta el momento.
    1. `history > .historial`
15. Agregue una nueva sección `## Historial` al final de este archivo que contenga el contenido del archivo `historial`.
    1. `echo '## Historial' >> README.md`
    2. `cat .historial >> README.md`
16. Puesta a punto de lo realizado, comparación de soluciones y unificación para una solución más óptima.

## Solución

En esta sección describa los pasos realizados para completar la tarea.

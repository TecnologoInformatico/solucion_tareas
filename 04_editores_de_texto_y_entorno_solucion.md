# Editores de texto y entorno

## vim

1. Verifique la versión que tiene instalada de `vi`.
   1. `vi --version `
   2. O dentro de vi `:version`
2. Compruebe si tiene instalado `vim`, si llegara a ser necesario cree un alias tal que al ejecutar `vi`, en realidad se ejecute `vim`.
   1. Si fuera necesario agregar el alias se podría agregar al final, o en una sección del archivo `~/.bashrc`
   `alias vi="vim"`
   para que este cambio tome efecto se puede salir y volver a iniciar sesión o recargar el archivo con `. ~/.bashrc`.
3. Escriba un script simple

```sh
#!/bin/bash

echo 'HELLO WORLD!'
```

4. Investigue como mostrar los números de línea y como fijar esta configuración.
   1. `:set number`
   2. Se pueden establecer configuraciones de modo permanente ingresandolas en el archivo `~/.vimrc`.
5. Realice el `vimtutor`.
6. Documente desplazamiento básico, formas de buscar en el documento y atajos que considere útiles.

## Variables de entorno

Establezca el directorio `~/customPath/mi/super/secret/pathFolder` de tal modo que lo ingresado allí quede dentro del listado del `PATH`. Se puede establecer sólo para la sesión actual o dejar fijo, en este caso probar ambas formas, primero en la sesión y luego de manera fija.

1. Crear el directorio super secreto.
   1. `mkdir ~/customPath/mi/super/secret/pathFolder`
2. Agregar una entrada al PATH.
   1. En el archivo `~/.bashrc` se agrega una linea:
   `export PATH=$PATH:~/customPath/mi/super/secret/pathFolder`
   De este modo se agrega la carpeta al PATH, sin perder el contenido previo del mismo.
   Para que esto tenga efecto es necesario recargar el archivo tal como se hizo en la parte anterior.
   `. ~/.bashrc`
3. Probar que funcione, cree un link simbólico del script antes creado en el directorio super secreto con el nombre `path-test`, luego intente ejecutarlo desde un directorio cualquiera.
   El enlace simbólico debería ser el del script:
   Por ejemplo suponiendo que el script está en el home y quiero ejecutarlo como `path-test`.
   `ln -s ~/script.bash ~/customPath/mi/super/secret/pathFolder/path-test`
   Bien, para que se haga la mágia seguramente necesites modificar el ejecutable.
   `chmod u+x ~/script.bash`
   Ahí le agregamos permisos de ejecución al usuario, el link simbólico tiene permisos dummies, los que importan son los del archivo real.
   `path-test`

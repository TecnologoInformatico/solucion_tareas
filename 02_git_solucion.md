# Tarea 02 | git

[🔗 classroom](https://classroom.github.com/a/T7MzGuBZ)

1. Inicializar un repositorio en el directorio ~/repo/tarea01
   1. `mkdir -p ~/repo/tarea01`
   2. `cd ~/repo/tarea01`
   3. `git init`
2. Cree un archivo README.md y otro test.txt
   1. `touch README.md test.txt`
3. En el readme ingrese un titulo y una lista con los miembros del equipo, en el archivo `test.txt` ingrese un texto de prueba.
   1. `vim README.md`
   2. `echo 'un texto de prueba' >> test.txt`
4. Agregue ambos archivos y realice un commit.
   1. `git add README.md test.txt`
   2. `git commit -m "commit inicial"`
5. Cree una nueva rama `test` y muevase a ella.
   1. `git checkout -b test`
6. Realice cambios al archivo test y agregue un subtitulo al readme con el nombre del equipo.
   1. `echo 'mas texto de prueba' >> test.txt`
   2. `vim README.md`
7. Agregue todos los cambios realizados y realice un commit.
   1. `git add -A`
   2. `git commit -m 'nombre de equipo y texto de prueba'`
8. Verifique y estudie en que estado se encuentra el repositorio.
   1. `git status`
9. Muevase a la rama `main` y realice un merge con la rama `test`.
    1. `git checkout main`
    2. `git merge test`
10. Cree un repositorio en un servidor remoto y establezcalo como `remote`.
    1. (Crear un repositorio vacío en github, gitlab, bitbucket, etc...)
11. *PC B* Clone el repositorio desde otro equipo o de no ser posible en otra carpeta.
12. *PC B* Cree una nueva rama `test2` y realice cambios en los archivos y luego actualice
la rama main con esos cambios.
    1. `git checkout -b test2`
13. *PC B* Agregue los cambios, realice un `commit` y un `push` al repositorio remoto.
    1. `git add -A`
    2. `git commit -m "cambios en rama 2"`
    3. `git push origin test2`
14. Realice cambios en la rama `test` y luego actualice la rama main con esos cambios.
15. Intente hacer un `push`, baje los cambios y solucione los conflictos.
16. Realice un `fetch` y de ser necesario un `pull`.

## Procedimiento

a. Realice los pasos indicados y comente los comandos utilizados.
b. ¿en que estado se encuentra el repositorio en el paso 8?
c. ¿que sucedió en el paso 15 al intentar hacer el `push`?

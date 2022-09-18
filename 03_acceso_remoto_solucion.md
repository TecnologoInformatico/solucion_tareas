# Acceso Remoto

[🔗 classroom](https://classroom.github.com/a/8UJEe0e9)

La mayoría de los ambientes computacionales que requieren administración se encuentran físicamente distribuidos.
Para estos casos es práctico el acceso remoto.

Además, en muchos casos se dispone de máquinas sin dispositivos de E/S más allá del acceso a la red y así estas máquinas pueden ser utilizadas únicamente en forma remota.

## Acceso remoto seguro

Desde hace muchos años los equipos con sistemas operativos tipo UNIX han tenido la capacidad de ser administrados remotamente mediante la red.

Con la adopción de Internet, programas como rlogin, telnet y FTP, presentaban un gran problema, toda comunicación, incluído el nombre y contraseña del usuario viajaban en texto plano.

### ssh

Para resolver este problema un nuevo protocolo fue desarrollado `SSH` (Secure SHell).
Para resolver dos problemas básicos en la comunicación segura, SSH primero autentica que el servidor sea quién dice ser, para así evitar el llamado ataque "Man in the middle", y por otro lado encripta todas las comunicaciones entre el host local y el remoto.

1. Genere un par de claves RSA en su máquina local (ssh-keygen).
   1. `ssh-keygen`
   Se mantiene la configuración por defecto creando el archivo en `~/.ssh/id_rsa`
2. De ser necesario agregue la nueva clave al agente ssh.
   1. `eval ssh-agent` en caso de que el agente no esté corriendo
   2. `ssh-add ~/.ssh/mi_clave_secreta` En caso de que la clave no tenga un nombre estandar.
3. Copie la clave pública al servidor remoto.
   1. `ssh-copy-id ~/.ssh/id_rsa.pub dmascheroni@tecnologoinformatico.com`
4. Asegurese de que puede loguearse al servidor utilizando la clave generada.
   1. `ssh dmascheroni@tecnologoinformatico.com`
   Debe pedir la passphrase de la key en lugar de la password del usuario.
5. Investigue el archivo `~/.ssh/config` para facilitar el inicio de sesión.
    Al agregar una entrada se puede crear un alias a un servidor y definir el modo de acceso:

    ```
    host miserver
    hostname 152.67.32.23
    user dmascheroni
    IdentityFile /home/dmascheroni/.ssh/mykey_rsa
    ```

    De este modo en lugar de `ssh -i ~/.ssh/mykey_rsa dmascheroni@152.67.32.23`
    puedo simplemente utilizar `ssh miserver`

6. Agregue la clave a github, de modo que no sea necesario ingresar usuario y contraseña. [utilizar ssh con github](https://docs.github.com/en/github/authenticating-to-github/adding-a-new-ssh-key-to-your-github-account)

## Transferencia de archivos

### SFTP

Una de las herramientas clásicas para la transferencia de archivos es ftp, el cual toma su nombre del protocolo FTP (FIle Transfer Protocol).

Sobre SSH esta aplicación se denomina SFTP y además de agregar seguridad al protocolo FTP tiene una mejora notable en su usabilidad.

Investigue el programa `SFTP` y realice las siguientes operaciones:

1. Conectese al equipo remoto.
   1. `sftp dmascheroni@tecnologoinformatico.com`
2. liste el contenido del directorio actual, ¿cual es el directorio actual?
   1. `ls`
   2. `pwd` (Mi directorio actual es el directorio /home/dmascheroni)
3. Muevase a la carpeta `sandbox` creada en la tarea anterior.
   1. `lcd ~/sandbox` (Para moverme en el equipo local `lcd`).
4. descargue una carpeta al equipo local, junto a todo su contenido.
   1. `get -r carpeta_test`
5. ¿donde se ha descargado la carpeta?
   1. Se descargo a la carpeta `~/sandbox`
6. Investigue como definir la carpeta donde se descargará.
   1. `get -r repo ../carpeta_test` (se le puede pasar como segundo argumento a get)
   o simplemente moverse en el equipo local.
7. desconectese del equipo remoto.
    `exit`

### scp

Repita la descarga de la carpeta remota al equipo local esta vez mediante la herramienta `scp` (secure copy).

`scp -r dmascheroni@tecnologoinformatico.com:carpeta_test ~/sandbox/`

Esto descargará el directorio `carpeta_test` del equipo remoto dentro de `~/sandbox` en el equipo local.

# Guia de comandos de Linux
> Para ver todas las variantes de los comandos (man) nos muestra todo lo que hace con los sufijos 
<p>Algunos de estos comandos al ejecutarlos pueden llegar a tirar algun error ya que no tenemos los paquetes instalados para ello tenemos que conocer el sistema de empaquetado (en este caso de Debian) </p>
<div>
  <p>Debian nos ofrece el "apt-get" para instalar paquetes de una forma mas sencilla</p>
  <ol>
    <li> Primero que debemos hacer actulizar las listas de paquete con "apt-get update"</li>
    <li> Luego podriamos instalar algun paquete nuevo ingresando "apt-get install", seguido del nombre del paquete a instalar</li>
  </ol>
  <spam> <a href="https://www.debian.org/doc/manuals/apt-guide/ch1.es.html"> Fuente del sistema de empaquetado</a> </spam> <br>
  <spam> <a href="https://help.ubuntu.com/kubuntu/desktopguide/es/directories-file-systems.html"> Fuente de la wiki oficial de Debian</a> </spam>

</div>
<h3>Comandos</h3>
<details>
  <summary>Archivos y editores</summary>
  <p>En linux todo es un fichero. Estos ficheros se organizan en una estructura de jerarquia, de tipo arbol. El nivel mas alto del sistema de fichero es / o directorio raiz. Todos los demas ficheros y directorios estan debajo.</p>
  <div>
     <h4>Grupos importantes de direcotiros de Linux:</h4>
    <div>
       <li>/bin: aplicaciones binarias importantes</li> 
       <li>/boot: Ficheros de configuracion de arranque, nucleos y otros fichero para el arranque. </li>
       <li>/dev: Ficheros de dispositivo</li>
       <li>/etc: ficheros de configuracion, scripts de arranque.</li>
       <li>/home: directorios personales</li> 
      <a href="[https://help.ubuntu.com/kubuntu/desktopguide/es/directories-file-systems.html](https://www.debian.org/doc/index.es.html)"> Ver mas sobre ficheros en GNU/Linux </a>
    </div>
  </div>
  
  <div>
    <h5>Comandos</h5>
    
  - *vim*: mas utilizado en servidores o en su otra version (vi)
    - :edit "nombre" (crea el archivo si no existe o lo edita si existe)
    - i (activa el modo escritura)
    - :w (guarda el archivo)
    - :q (salir tranqui) :q! (fuerza en la salida)
  - *nano*: es un poco mas lindo que vim tenes los comandos abajo para guiarte
  - *mcedit*: se maneja con los f1,f2,f3.. pero hayq ue instalarlo.
  - *file*: determina el tipo de archivo
  - *cat*: podemos ver las lineas del archivo
  - *more*: te permite desplazarte por el archivo
  - *less*: te permite ver linea por linea
  - *head*: muestra las primeras 10 lineas de cada archivo
  - *df -h /home*: con este comando podemos ver cuanto espacio nos queda en la particion
 </details>
 <details>
   
</div>
  <summary>Navegacion entre directorios y mas</summary>

  ## 📁 Navegación y gestión de archivos en Linux

### `cd`
Accede a una carpeta (directorio).

- `cd carpeta/`: entra a la carpeta
- `cd ..`: sube un nivel (sale de la carpeta actual)
- `cd ~`: vuelve al directorio personal del usuario

### `mkdir`
Crea un nuevo directorio.

- `mkdir nueva_carpeta`: crea una carpeta vacía
- `mkdir -p ruta/varios/niveles`: crea múltiples niveles de carpetas

### `rmdir`
Elimina un directorio vacío.

- `rmdir carpeta_vacía`: borra la carpeta si no contiene archivos

### `ln`
Crea enlaces a archivos o directorios (como accesos directos).

- `ln archivo enlace`: crea un enlace duro
- `ln -s archivo enlace`: crea un enlace simbólico (soft link)

### `tail`
Muestra las últimas líneas de un archivo.

- `tail archivo.txt`: muestra las últimas 10 líneas
- `tail -f archivo.log`: sigue mostrando nuevas líneas en tiempo real (ideal para logs)

### `locate`
Busca archivos rápidamente usando una base de datos indexada.

- `locate nombre_archivo`: muestra rutas donde se encuentra el archivo
- Requiere que la base esté actualizada con `updatedb`

### `find`
Busca archivos en tiempo real recorriendo el sistema de archivos.

- `find /ruta -name "archivo.txt"`: busca por nombre
- `find . -type f -size +10M`: busca archivos mayores a 10MB

### `ls`
Lista el contenido de un directorio.

- `ls`: muestra archivos y carpetas
- `ls -l`: muestra detalles (permisos, tamaño, fecha)
- `ls palabra*`: filtra por nombre que comience con "palabra"

### `pwd`
Muestra la ruta completa del directorio actual.

- `pwd`: útil para saber dónde estás parado en el sistema

### `cp`
Copia archivos o directorios.

- `cp archivo destino/`: copia archivo
- `cp -r carpeta destino/`: copia carpeta y su contenido

### `mv`
Mueve o renombra archivos y carpetas.

- `mv archivo destino/`: mueve archivo
- `mv viejo.txt nuevo.txt`: renombra archivo

### `who`
Muestra los usuarios conectados al sistema.

- `who`: lista usuarios, terminales, hora e IP
- `w`: muestra lo mismo pero con más detalles (procesos activos, tiempo de inactividad, etc.)

  
  
 </details>
 
<details>
  <summary>Gestion y ayuda</summary>
  <p>which "comando", nos dice donde se ubica el comando</p>
  
  <div>
    
  ## 🖥️ Administración del sistema y tareas programadas

### `shutdown [opciones] [tiempo] [mensaje]`
Apaga (`-h`) o reinicia (`-r`) el sistema en un tiempo determinado, mostrando un mensaje opcional.

- `shutdown -h now`: apaga el sistema inmediatamente
- `shutdown -r +15 "Backup en curso"`: reinicia en 15 minutos con mensaje para los usuarios

### `reboot`
Reinicia el sistema de forma segura, cerrando procesos y desmontando sistemas de archivos correctamente. Requiere privilegios.

### `halt`
Detiene el sistema cerrando todos los procesos, sincroniza los sistemas de archivos y apaga la CPU. Requiere privilegios.

### `uname -a`
Muestra información detallada del sistema operativo, incluyendo kernel, arquitectura, nombre de host y más.

### `dmesg`
Muestra los mensajes del kernel. Útil para diagnosticar problemas de hardware, arranque y eventos del núcleo. Requiere privilegios para ver todos los mensajes.

### `lspci`
Lista los dispositivos conectados al bus PCI (tarjetas gráficas, de red, etc.). Requiere privilegios.

### `at`
Programa tareas únicas para ejecutarse en un momento específico en el futuro.

- `echo "reboot" | at 23:00`: programa un reinicio a las 23:00
- Usa `/bin/sh` como shell por defecto

#### `atq`
Muestra la lista de tareas pendientes programadas con `at`.

#### `atrm`
Elimina una tarea programada por su ID.

- `atrm 2`: elimina la tarea con ID 2

### `cron`
Permite programar tareas repetitivas (diarias, semanales, etc.).

- Se configura mediante el archivo `crontab`
- Ejemplo: `0 5 * * * /home/user/script.sh` ejecuta el script todos los días a las 5:00

### `netstat`
Monitorea el estado de la red: conexiones activas, puertos abiertos, estadísticas de tráfico.

- `netstat -tuln`: muestra puertos TCP/UDP en escucha
- `netstat -p`: muestra procesos asociados a conexiones


  </div>
</details>

<details>
<summary>Usuarios y permisos</summary>

  ## 👥 Usuarios y permisos en Linux

### `useradd`
Crea un nuevo usuario.

- `-m`: crea el directorio home (`/home/usuario`)
- `-d /ruta`: define una ruta personalizada para el home
- `-s /bin/bash`: asigna una shell específica
- `-G grupo1,grupo2`: agrega el usuario a grupos adicionales

### `adduser`
Script interactivo para crear usuarios (usado en Debian y derivados).

- Crea el usuario, directorio home, contraseña y configuración básica.

### `usermod`
Modifica atributos de un usuario existente.

- `-aG grupo`: agrega el usuario a un grupo sin quitarlo de otros
- `-d /nueva/ruta`: cambia el directorio home
- `-l nuevo_nombre`: cambia el nombre del usuario
- `-s /bin/zsh`: cambia la shell

### `userdel`
Elimina un usuario del sistema.

- `-r`: elimina también el directorio home y archivos asociados

### `su`
Permite cambiar de usuario en la terminal.

- `su`: cambia al usuario root (requiere contraseña)
- `su - usuario`: cambia al usuario indicado y carga su entorno

### `groupadd`
Crea un nuevo grupo.

- `groupadd nombre_del_grupo`: crea el grupo
- `-g GID`: especifica un ID de grupo personalizado

### `groupdel`
Elimina un grupo del sistema.

- `groupdel nombre_del_grupo`: borra el grupo (si no está en uso)

### `who`
Muestra los usuarios actualmente conectados al sistema.

- Sin parámetros: lista usuarios, terminal, hora de conexión

### `passwd`
Cambia la contraseña de un usuario.

- `passwd`: cambia la contraseña del usuario actual
- `passwd usuario`: cambia la contraseña de otro usuario (como root)

### `chmod`
Cambia los permisos de archivos o directorios.

- `chmod 755 archivo`: permisos rwxr-xr-x
- `chmod u+x script.sh`: da permiso de ejecución al usuario

### `chown`
Cambia el propietario de un archivo o directorio.

- `chown usuario archivo`: cambia el dueño
- `chown usuario:grupo archivo`: cambia dueño y grupo

### `chgrp`
Cambia el grupo asociado a un archivo o directorio.

- `chgrp grupo archivo`: asigna el archivo al grupo indicado

  
 </details>

<details>
<summary>Uso del FileSystem</summary>

## 💾 Comandos de gestión de discos y archivos en Linux

### `umount`
Desmonta un sistema de archivos previamente montado.

- `umount /mnt/usb`: desmonta el dispositivo montado en `/mnt/usb`
- `umount -l /mnt/usb`: desmontaje "perezoso", útil si el dispositivo está ocupado

### `du`
Muestra el espacio que ocupa un archivo o directorio.

- `du -h archivo`: muestra el tamaño en formato legible (KB, MB, GB)
- `du -sh carpeta/`: muestra el total ocupado por la carpeta

### `df`
Muestra el uso del espacio en disco por partición.

- `df -h`: muestra el espacio libre y usado en formato legible
- `df /home`: muestra información específica de la partición donde está `/home`

### `mount`
Monta un sistema de archivos o dispositivo.

- `mount /dev/sdb1 /mnt/usb`: monta la partición en el directorio `/mnt/usb`
- `mount -t ext4 /dev/sdb1 /mnt/usb`: especifica el tipo de sistema de archivos

### `mkfs`
Formatea una partición con un sistema de archivos.

- `mkfs.ext4 /dev/sdb1`: crea un sistema de archivos ext4 en la partición
- ⚠️ **Advertencia**: borra todos los datos del dispositivo

### `fdisk`
Herramienta para gestionar particiones en discos (¡con cuidado!).

- `fdisk /dev/sda`: abre el disco para editar particiones
- Comandos internos: `n` (nueva partición), `d` (borrar), `w` (guardar cambios)

### `write`
Envía mensajes a otro usuario conectado al sistema.

- `write usuario`: permite escribirle directamente en su terminal
- Requiere que el usuario tenga habilitado el permiso de recepción (`mesg y`)

### `losetup`
Asocia archivos de imagen con dispositivos de bucle (loop).

- `losetup /dev/loop0 imagen.iso`: vincula la imagen a un dispositivo virtual
- `losetup -d /dev/loop0`: desmonta el dispositivo de bucle

### `stat`
Muestra información detallada sobre un archivo.

- `stat archivo.txt`: muestra permisos, tamaño, fechas de acceso/modificación

  
 </details>

 <details>
<summary>Procesos</summary>

  ## ⚙️ Gestión de procesos en Linux

### `top`
Muestra una vista dinámica y en tiempo real del rendimiento del sistema: procesos activos, uso de CPU y memoria, carga del sistema, etc.

### `htop`
Interfaz mejorada de `top`, con visualización en colores, navegación con teclado, y árbol de procesos. Más amigable y personalizable.

### `ps`
Muestra una "fotografía" de los procesos en ejecución en ese momento.

- `ps aux`: lista todos los procesos del sistema
- `ps -ef`: formato extendido con jerarquía de procesos

### `pstree`
Muestra los procesos en forma de árbol, indicando relaciones padre-hijo.

- `pstree -p`: incluye los PID en el árbol

### `kill`
Envía señales a procesos, comúnmente para terminarlos.

- `kill PID`: termina el proceso con ese ID
- `kill -9 PID`: fuerza la terminación (SIGKILL)

### `pgrep`
Busca procesos por nombre y devuelve su PID.

- `pgrep firefox`: muestra el PID de procesos llamados "firefox"

### `pkill`
Similar a `pgrep`, pero además **mata** el proceso por nombre.

- `pkill firefox`: termina todos los procesos llamados "firefox"

### `killall`
Termina todos los procesos que coincidan con un nombre exacto.

- `killall chrome`: mata todos los procesos llamados "chrome"

### `renice`
Cambia la prioridad de un proceso que ya está en ejecución.

- `renice -n 10 -p 1234`: baja la prioridad del proceso con PID 1234

### `xkill`
Permite cerrar ventanas gráficas haciendo clic sobre ellas (requiere entorno gráfico).

- Ejecutás `xkill`, el cursor cambia, y hacés clic en la ventana a cerrar.

### `atop`
Monitor de rendimiento avanzado. Muestra uso de CPU, memoria, disco, red y más, con historial.

- `atop`: inicia el monitor en tiempo real
- Requiere instalación previa (`sudo apt install atop`)

### `nice`
Ejecuta un proceso con una prioridad modificada desde el inicio.

- `nice -n 10 comando`: ejecuta el comando con prioridad baja
- Valores negativos = mayor prioridad (solo root puede usarlos)

  
 </details>

 <details>
<summary>Otros comandos utiles</summary>

  ## 📦 Comandos útiles para archivos, compresión y búsqueda en Linux

### `tar`
Empaqueta múltiples archivos en uno solo, y opcionalmente los comprime.

- `tar -cvf archivo.tar carpeta/`: crea un archivo tar sin comprimir
- `tar -czvf archivo.tar.gz carpeta/`: empaqueta y comprime con gzip
- `tar -xvf archivo.tar`: extrae el contenido
- `tar -tzf archivo.tar.gz`: lista el contenido sin extraer

### `grep`
Busca texto dentro de archivos o salidas de comandos.

- `grep "palabra" archivo.txt`: busca líneas que contengan "palabra"
- `grep -i`: ignora mayúsculas/minúsculas
- `grep -r`: busca recursivamente en directorios
- `grep -n`: muestra el número de línea

### `gzip`
Comprime archivos individuales usando el algoritmo gzip.

- `gzip archivo.txt`: genera `archivo.txt.gz`
- `gunzip archivo.txt.gz`: descomprime el archivo
- `gzip -k archivo.txt`: comprime sin borrar el original

### `zgrep`
Permite usar `grep` directamente sobre archivos comprimidos con gzip.

- `zgrep "error" archivo.log.gz`: busca "error" sin descomprimir manualmente
- Acepta las mismas opciones que `grep`

### `wc`
Cuenta líneas, palabras y caracteres en archivos.

- `wc archivo.txt`: muestra líneas, palabras y bytes
- `wc -l`: cuenta solo líneas
- `wc -w`: cuenta solo palabras
- `wc -c`: cuenta solo caracteres


  
 </details>

<h3>Ejercicio 19 de la practica 1</h3>
<p>Indique qué acción realiza cada uno de los comandos indicados a continuación 
considerando su orden. Suponga que se ejecutan desde un usuario que no es root ni 
pertenece al grupo de root. (Asuma que se encuentra posicionado en el directorio de 
trabajo del usuario con el que se logueó). En caso de no poder ejecutarse el comando, 
indique la razón:  </p>

```bash
l s −l > prueba   --> se muestra la lista de cosas detalladas que hay donde este parado 
ps > PRUEBA       --> muestra los proceso de la bash y que comando fue ejecutado
chmod 710 prueba  --> error de acceso denegado
chown root:root PRUEBA   --> error de acceso denegado
chmod 777 PRUEBA   --> error de acceso denegado
chmod 700 /etc/passwd   --> error de acceso denegado
passwd root   --> no deberias poder cambiar la contraseña del root
rm PRUEBA  --> borra el archivo de prueba
man /etc/shadow  -->no funciona por que man se usa para ver la ayuda de un comando en especial
find / −name ∗ .conf  find --> la intencion de este comando es buscar en todo el sistema los archivos .conf, la sintaxis esta mal deberia ser find / -name "*.conf", te muestra los archivos . conf que podes ver pero si no sos root, te dice acceso denegado
usermod root −d /home/ newroot −L  
cd / rootcd   
rm ∗  
cd / etc  
cp ∗ /home −R  
shutdown  



```

 


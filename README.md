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
  
  - *cd*: acceder a una carpeta y (*cd ..*) para salir de esa carpeta
  - *mkdir*: crea un directorio
  - *rmdir*: borra directorio
  - *ln*: crea enlaces de archivos para poder acceder en otro lugar (accesso directo)
  - *tail*: muestra las ultimas 10 lienas de una archivo o verlo en tiempo real linea por linea
  - *locate*: busca en todo el sistema un archivo
  - *find*: Busca un archivo en toda la jerarquia de directorios
  - *ls*: muestra el contenido del directorio. con ls palabra* buscamos los archivos con la palabra a buscar
  - *pwd*: muestra la ruta actual
  - *cp*: copia un archivo
  - *mv*: mover un archivo
  - *who*: Muestra usuarios activos, junto con sus terminales la hora y la IP y con "w" vemos mas lindo
 </details>
 
<details>
  <summary>Gestion y ayuda</summary>
  <p>which "comando", nos dice donde se ubica el comando</p>
  
  <div>
    
  - *shutdown [opciones] [tiempo] [mensaje]*: apaga (-h) o reinicia(-r) el sistema.
    - ejemplo: shutdown +15 "Backup en curso" 
  - *reboot*: reinicia el sistema de forma sgura, cerrando procesos y desmontando sistemas de archivos correctamente (requiere privilegios).
  - *halt*: detiene el sistema de forma segura cerrando todos los procesos, apaga la CPU y sincroniza los sistema de archivos (requiere privilegios)
  - *uname -a*: Muestra informacion detallada del sistema operativo
  - *dmesg*: Podemos ver los mensajes del Kernel, podemos diagnosticar el hardware y arranque del sistema y eventos del nucleo (requiere privilegios)
  - *lspci*: Muestra una lista de los dispositivos conectados al bus PCI (Peripheral Component Interconnect).(requiere privilegios)
  - *at*: Programa tareas unicas que se ejecutaran en un momento especifico en el futuro. Lee los comandos desde la entrada o desde una rchivo usa el shell por defecto (/bin/sh) para ejecutar las tareas.
    -  *atq*: Lista las tareas pendientes
    -  *atrm*: Elimina una tarea programada por si ID
  - *cron*: se usa para tareas repetitivas
  - *netstat*: Monitoreo de red

  </div>
</details>

 <details>
<summary>Procesos</summary>
  
  - *top*: Muestra una vista dinamica y en tiempo real el rendimiento del sistema, incluyenod los procesos de ejecucion, la utilizacion de CPU y memmoria y el estado de usuarios activos
  - *htop*: lo mismo que el top pero mas lindo 
  - *ps*: muestra los procesos que estan ocurriendo en el momento
  - *pstree*: muestra el arbol de procesos
  - *kill*: Se usa para mandar señales a proceso, en este caso terminar con un proceso en ejecucion por su nombre o ID
  - *pgrep*: 
  - *pkill*: 
  - *killall*: 
  - *renice*: 
  - *xkill*: 
  - *atop*: 
  - *nice*: 
 </details>


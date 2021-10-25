# Born2beRoot
### ¿Que es una maquina virtual?
Una máquina virtual es un software que crea una capa independiente donde se emula el funcionamiento de un ordenador real con todos los componentes de hardware que necesita para funcionar (disco duro, memoria RAM, tarjetas de red, tarjeta gráfica, etc.) y que puede ejecutar cualquier sistema operativo o programa, tal y como lo haría un ordenador real

### ¿Que es debian?
El Proyecto Debian es una asociación de personas que han hecho causa común para crear un sistema operativo (SO) libre. Este sistema operativo que hemos creado se llama Debian.
Un sistema operativo es un conjunto de programas y utilidades básicas que hacen que su computadora funcione. El centro de un sistema operativo es el núcleo (N. del T.: kernel). El núcleo es el programa más importante en la computadora, realiza todo el trabajo básico y le permite ejecutar otros programas.

Los sistemas Debian actualmente usan el núcleo de Linux o de FreeBSD. Linux es una pieza de software creada en un principio por Linus Torvalds y desarrollada por miles de programadores a lo largo del mundo. FreeBSD es un sistema operativo que incluye un núcleo y otro software.

### Diferencias entre apt y aptitude
En las distribuciones de SO basadas en Debian, el administrador de paquetes predeterminado que podemos usar es dpkg . Esta herramienta nos permite instalar, eliminar y administrar programas en nuestro sistema operativo. Sin embargo, en la mayoría de los casos, estos programas vienen con una lista de dependencias que deben instalarse para que el programa principal funcione correctamente. Una opción es instalar manualmente estas dependencias. Sin embargo, APT (Advanced Package Tool) , que es una herramienta que usa dpkg, puede usarse para instalar todas las dependencias necesarias al instalar un programa . Entonces ahora podemos instalar un programa útil con un solo comando.
APT puede trabajar con diferentes back-end y fron-end para hacer uso de sus servicios. Uno de ellos es apt-get , quenos permite instalar y eliminar paquetes . Junto con apt-get, también hay muchas herramientas como apt-cache para administrar programas. En este caso, apt-get y apt-cache son utilizados por apt . Gracias a apt podemos instalar programas .deb de forma sencilla y sin preocuparnos por las dependencias. Pero en caso de que queramos utilizar una interfaz gráfica, tendremos que utilizar aptitude. Aptitude también controla mejor las dependencias , lo que permite al usuario elegir entre diferentes dependencias al instalar un programa.

### ¿Qué es AppArmor?
AppArmor es similar a SELinux, utilizado por defecto en Fedora y Red Hat. Aunque funcionan de forma diferente, tanto AppArmor como SELinux proporcionan seguridad de "control de acceso obligatorio" (MAC). En efecto, AppArmor permite a los desarrolladores de Ubuntu restringir las acciones que pueden realizar los procesos.

Por ejemplo, una aplicación que está restringida en la configuración predeterminada de Ubuntu es el visor Evince PDF. Aunque Evince puede ejecutarse como su cuenta de usuario, sólo puede realizar acciones específicas. Evince sólo tiene el mínimo de permisos necesarios para ejecutar y trabajar con documentos PDF. Si se descubriera una vulnerabilidad en el renderizador de PDF de Evince y se abriera un documento PDF malicioso que se apoderara de Evince, AppArmor restringiría el daño que Evince podría causar. En el modelo de seguridad tradicional de Linux, Evince tendría acceso a todo lo que usted tiene acceso. Con AppArmor, sólo tiene acceso a las cosas a las que un visualizador de PDF necesita acceso.

### ¿Qué es SeLinux?
SELinux es una implementación de control de acceso obligatorio (MAC), en este caso para sistemas Linux. Frente a mecanismos tradicionales basados en permisos de fichero, el control de acceso obligatorio aporta una mayor seguridad en acceso e interacciones entre objetos (dispositivos, ficheros) y sujetos (usuarios, procesos, comunicaciones y acciones) del sistema. Además, este sistema de control de acceso es "transparente" para el usuario del sistema y su configuración depende de un administrador con máximo privilegio en el sistema.

### ¿Qué es SSH?
SSH o Secure Shell, es un protocolo de administración remota que le permite a los usuarios controlar y modificar sus servidores remotos a través de Internet a través de un mecanismo de autenticación.

Proporciona un mecanismo para autenticar un usuario remoto, transferir entradas desde el cliente al host y retransmitir la salida de vuelta al cliente. El servicio se creó como un reemplazo seguro para el Telnet sin cifrar y utiliza técnicas criptográficas para garantizar que todas las comunicaciones hacia y desde el servidor remoto sucedan de manera encriptada.

    ssh {user}@{ip_server} -p {port}

### ¿Qué es UFW?
Las siglas "UFW" significan "Uncomplicated Firewall" y hacen referencia a una aplicación que tiene como objetivo establecer reglas en "iptables", las tablas de firewall nativas en Linux. Puesto que iptables tiene una sintaxis relativamente compleja, utilizar UFW para realizar su configuración es una alternativa útil sin escatimar en seguridad. Nos permitira abrir y cerrar puertos, combinado con ssh nos sera de gran utilidad

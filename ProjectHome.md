# Logtrigger #
Fue escrito para correr en **embedded linux** como [OpenWRT](http://www.openwrt.org) por tal motivo es pequeño, pero funciona muy bien en sistemas más grandes con linux, realizando una tarea muy especifica **leer los registros de logs** de otros programas y/o servicios para poder lanzar procesos externos cuando uno de estos registros coincide con una regla creada.

**Logtrigger** lee cada evento registrado, extrae información del mismo y la publica en variables de sistema para que pueda ser leida por un proceso externo llamado por **Logtrigger**.

Esto lo hace muy flexible y con un gran potencial ya que los **procesos** pueden ser escritos en cualquier lenguaje de script o programación dándole la posibilidad de automatizar infinidad de tareas en el momento en que el evento sucede.

### Utilidad ###
Todo administrador de un host o una red, en ocasiones necesita leer archivos de logs para poder encontrar porque sucedieron algunas cosas o realizar procesos de mantenimiento cada vez que un error o evento fue registrado en el sistema.

Con **Logtrigger** ya no necesitará revisar archivos de eventos para ejecutar los procesos necesarios.<br>
<b>Logtrigger</b> lo hace por Ud.<br>
<br>
Muchos de estos procesos pueden ser realizados con <b>CRON</b> pero esto puede que sobrecargue mucho nuestro procesador o que la acción llegue tarde, (ej.: un ataque a nuestro ssh, asterisk, o algún otro porceso, donde estan tratando de robarnos una cuenta), ya que en el momento en que <b>CRON</b> ejecuta el proceso esto ya terminó.<br>
<br>
Como <b>Logtrigger</b> puede lanzar procesos especificos ante cada evento se convierte en una herramienta de gran ayuda para:<br>
<ul><li>Analizar Eventos<br>
</li><li>Detección de Errores<br>
</li><li>Mantenimiento<br>
</li><li>Seguridad<br>
</li><li>Auxiliar de otros procesos</li></ul>




Monitoring logs files and execute action script when match any rule configured
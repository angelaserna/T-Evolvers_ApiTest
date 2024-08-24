##Introducción

Este proyecto es un reto técnico construido con el Framework Karate para realizar pruebas a Api's.
Para estas pruebas se utilizaron las api's de Restful Booker HerokuApp.

**PRUEBAS DE AUTOMATIZACIÓN DE API:**

El reto consta en automatizar las API's para los siguientes endpoints:
1. Crear token
2. Consultar reservas
3. Consultar detalle de reserva por ID
4. Crear reserva
5. Actualizar reserva
6. Eliminar reserva
7. Validar estado del API

**API**

• URL: https://restful-booker.herokuapp.com/apidoc/index.html

Un escenario esencial para la ejecución de varios de los métodos es la generación del token (Auth-CreateToken), el cual es utilizado en varias peticiones generando con el los header's de Authorization y Cookie (resultado de concatenar el valor del token con la respuesta del endpoint).

Se efectuaron las validaciones correspondientes a cada tipo de método.

---

###Pruebas de Api con Karate

**Framework Karate**
Es la única herramienta de código abierto que combina automatización de pruebas de API, simulacros, pruebas de rendimiento e incluso automatización de UI en un único marco unificado. La sintaxis BDD popularizada por Cucumber es neutral en cuanto al lenguaje y fácil incluso para los no programadores. Las potentes afirmaciones JSON y XML están integradas y puedes ejecutar pruebas en paralelo para mayor velocidad.

La ejecución de pruebas y la generación de informes se parecen a cualquier proyecto Java estándar. Pero también hay un ejecutable independiente para equipos que no se sienten cómodos con Java. No tienes que compilar código. Simplemente escribe pruebas en una sintaxis simple y legible, cuidadosamente diseñada para HTTP, JSON, GraphQL y XML. Y puedes mezclar automatización de pruebas de API y UI dentro del mismo script de prueba.

https://github.com/intuit/karate

**Prerequisitos**

El proyecto está desarrollado en Java con Maven por lo que instalará el siguiente software:

* [Oracle Java 8 SDK](https://java.oracle.com)
* [Gradle](https://gradle.org/)
* Tu IDE favorito :
  * [Intellij IDEA](http://www.jetbrains.com): Para ejecutar pruebas de características o escenarios, se configurará:


```
[Run configuration with Cucumber Java template]
    Main class: com.intuit.karate.cli.Main    
    Glue: com.intuit.karate
```


###Ejecución de pruebas en local

Para intentar ejecutar el demo en el ambiente local, ingrese a la carpeta raíz y ejecute los siguientes comandos para instalar las dependencias e iniciar los ejecutores de pruebas uno por uno.
```
mvn clean install -DskipTests
mvn clean test -Dtest=ExamplesRunner
mvn clean test -Dtest=DemoTestParallel

```

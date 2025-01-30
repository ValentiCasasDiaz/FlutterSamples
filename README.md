<a name="readme-top"></a>

# Aprender Flutter
<details>
  <summary>Contenidos</summary>
  <ol>
    <li>
      <a href="#sobre-el-proyecto">Sobre el proyecto</a>
    </li>    
    <li>
      <a href="#versiones">Versiones</a>
    </li>
    <li>
      <a href="#Como-usar-este-repositorio">Como usar este repositorio</a>
    </li>
    <li>
      <a href="#Fundamentos-de-Flutter">Fundamentos de Flutter</a>
      <ol>
        <li><a href="#Conectar-a-una-API">Conectar a una API</a></li>
        <li><a href="#Streams">Streams</a></li>
      </ol>
    </li>
    <li>
      <a href="#Contenido-Adicional">Contenido Adicional</a>
    </li>
  </ol>
</details>

<p align="right">(<a href="#readme-top">Volver arriba</a>)</p>

## Sobre el proyecto
Este proyecto tiene principalmente dos propósitos:
* Aprender nociones básicas de Github
* Aprender Flutter con pequeños ejemplos

En cada rama de este repositorio podremos encontrar diferentes ejercicios focalizando diferentes partes del Framework de Flutter. Cada rama adicionalmente está numerada secuencialmente para que haya un orden en el aprendizaje de dichos conocimientos.

<p align="right">(<a href="#readme-top">Volver arriba</a>)</p>

## Frameworks y Lenguajes
[![Dart][Dart.io]][Dart-url]
[![Flutter][Flutter.io]][Flutter-url]

<p align="right">(<a href="#readme-top">Volver arriba</a>)</p>

## Como usar este repositorio
Mi recomendación es que vayais a la rama pertinente y os descargueis el .zip.

<p align="right">(<a href="#readme-top">Volver arriba</a>)</p>

## Fundamentos de Flutter

### Conectar a una API
En este ejemplo se hace una conexión a una API externa de imágenes y se cargan en la UI en forma de lista. Se trabajan los siguientes puntos:
* Una arquitectura limpia donde se separan los ficheros de código en diferentes carpetas para estructurar mejor el proyecto.
* <b>Future y FutureBuilder:</b> Se usa cuando necesitamos cargar alguna parte de la app de manera asíncrona.
* Conversión del JSON de una respuesta de una API a un modelo y viceversa. 

Dependencias:
<ul> 
    <li>http (<a href="https://pub.dev/packages/http" target="_blank">link</a>)</li>
    <li>cached_network_image (<a href="https://pub.dev/packages/cached_network_image" target="_blank">link</a>)</li>
</ul>
<p>(<a href="https://github.com/ValentiCasasDiaz/FlutterSamples/archive/refs/heads/conectar_api.zip">Descargar</a>)</p>

### Streams
En este ejemplo tenemos dos páginas, la primera es una lista de elementos que podemos añadir a una cesta de la compra y la segunda es la página donde podemos ver el contenido de la cesta de la compra. Cada vez que se añade un elemento a la cesta se actualiza el contador de elementos en la UI. Se trabajan los siguientes puntos:
* Una arquitectura limpia donde se separan los ficheros de código en diferentes carpetas para estructurar mejor el proyecto.
* <b>Streams i Streambuilder:</b> Para construir parte de la UI en función de los streams y que se actualice la UI en diferentes páginas
* Conversión del JSON de una respuesta de una API a un modelo y viceversa. 

Dependencias:
<ul> 
    <li>provider (<a href="https://pub.dev/packages/provider" target="_blank">link</a>)</li>
</ul>
<p>(<a href="https://github.com/ValentiCasasDiaz/FlutterSamples/archive/refs/heads/streams.zip">Descargar</a>)</p>

<p align="right">(<a href="#readme-top">Volver arriba</a>)</p>

## Contenido adicional

<p align="right">(<a href="#readme-top">Volver arriba</a>)</p>

<!-- MARKDOWN LINKS & IMAGES -->
[Flutter.io]: https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white&label=3.27.3&labelColor=blue
[Flutter-url]: https://flutter.dev/
[Dart.io]: https://img.shields.io/badge/Dart-02569B?style=for-the-badge&logo=dart&logoColor=white&label=3.6.1&labelColor=blue
[Dart-url]: https://dart.dev/

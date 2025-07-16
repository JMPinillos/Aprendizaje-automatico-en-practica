# Aprendizaje Automático Supervisado
La primera asignatura es Aprendizaje Automático Supervisado. Las actividades son:

1. Regresión lineal y árboles de decisión para tareas de regresión:

   ## Objetivos

   Mediante esta actividad se pretende que ponga en práctica los pasos para la resolución de un problema de machine learning, el tratamiento de datos y la creación de modelos basados en regresión lineal y árboles de decisión. El objetivo es comprender de forma práctica con un problema determinado las diferencias que existen a la hora de entrenar los diferentes modelos.

   - Iniciarse en el Análisis Exploratorio de Datos (EDA) para los problemas de Machine Learning.
   - Entender y aplicar los conceptos de la Regresión Lineal Múltiple a un problema de regresión.
   - Entender y aplicar los conceptos de Árboles de Decisión a un problema de regresión.
   - Evaluar y analizar los resultados de los clasificadores.
   - Investigar la aplicación de los modelos de clasificación a problemas reales.

   ## Descripción de la actividad

   Debes completar los espacios indicados en el notebook con el código solicitado y la respuesta, en función de lo que se solicite. Ten encuenta que las celdas vacías indican cuántas líneas debe ocupar la respuesta, por lo general no más de una línea.

   El conjunto de datos con el que vamos a trabajar se encuentra en el siguiente enlace: https://archive.ics.uci.edu/dataset/360/air+quality

   Se trata de un dataset con un conjunto de datos sobre calidad del aire. El conjunto de datos contiene 9358 instancias de respuestas promediadas por hora de una matriz de 5 sensores químicos de óxido de metal integrados en un dispositivo multisensor químico de calidad del aire. El dispositivo estaba ubicado en un área significativamente contaminada, al nivel de la carretera, dentro de una ciudad italiana. Los datos se registraron desde marzo de 2004 hasta febrero de 2005 (un año).

   El objetivo de la regresión será predecir la calidad del aire para un determinado día.

   ### Tareas que se deben realizar

   - Análisis descriptivo de los datos:
     - Debe completarse el código solicitado y responder a las preguntas. Todo ello en el notebook dado como base.
   - Regresión:
     - Debe completarse el código solicitado y responder a las preguntas. Todo ello en el notebook dado como base.
   - Investigación:
     - Buscar un artículo científico (https://scholar.google.es/) con un caso de uso de regresión empleando una de las dos técnicas (o ambas) vistas en la actividad. Los artículos deben estar en revistas científicas, y deben ser posteriores a 2015. No debe utilizar técnicas de Deep Learning.
     - Para el artículo indicar:
       - Objetivo: cuál es el objetivo de la investigación, es decir a qué problema real está aplicando la regresión.
       - Cómo utilizan las técnicas de regresión, si realizan alguna adaptación de los algoritmos indicarse.
       - Principales resultados de la aplicación y de la investigación.

2. Clasificación con máquinas de vectores de soporte y *random forest*

   ## Objetivos

   Mediante esta actividad se pretende que ponga en práctica la creación de modelos basados en máquinas de vector de soporte y random forest. El objetivo es comprender de forma práctica con un problema determinado las diferencias que existen a la hora de entrenar los diferentes modelos.

   - Comprender el tratamiento de datos que hay que realizar para los modelos de clasificación.
   - Entender y aplicar el algoritmo de Random Forest a un problema de clasificación.
   - Entender y aplicar el algoritmo de Support Vector Machine a un problema de clasificación.
   - Evaluar y analizar los resultados de los clasificadores.
   - Investigar la aplicación de los modelos de clasificación a problemas reales.

   ## Descripción de la actividad

   Debes completar los espacios indicados en el notebook con el código solicitado y la respuesta, en función de lo que se solicite. Ten encuenta que las celdas vacías indican cuántas líneas debe ocupar la respuesta, por lo general no más de una línea.

   El conjunto de datos con el que vamos a trabajar se encuentra en el siguiente enlace: https://archive.ics.uci.edu/dataset/31/covertype

   Este dataset ha sido generado para predecir el tipo de cubierta forestal únicamente a partir de variables cartográficas (sin datos de sensores remotos). El tipo de cubierta forestal real para una observación determinada (celda de 30 x 30 metros) se determinó a partir de los datos del Sistema de información de recursos (RIS) de la Región 2 del Servicio Forestal de EE. UU. (USFS). Las variables independientes se derivaron de datos obtenidos originalmente del Servicio Geológico de EE. UU. (USGS) y de datos del USFS. Los datos están en forma original (no escalados) y contienen columnas binarias (0 o 1) de datos para variables cualitativas independientes (áreas silvestres y tipos de suelo). Para ampliar información sobre el dataset y su origen, recomendamos leer la descripción completa del dataset en el enlace del repositorio.

   El objetivo de la clasificación será detectar el tipo de suelo.

   ## Tareas que se deben realizar

   - Análisis descriptivo de los datos:
     - Debe completarse el código solicitado y responder a las preguntas. Todo ello en el notebook dado como base.
   - Clasificación:
     - Debe completarse el código solicitado y responder a las preguntas. Todo ello en el notebook dado como base.
   - Investigación:
     - Buscar un artículo científico (https://scholar.google.es/) con un caso de uso de clasificación empleando una de las dos técnicas (o ambas) vistas en la actividad. Los artículos deben estar en revistas científicas, y deben ser posteriores a 2015. No debe utilizar técnicas de Deep Learning.
     - Para el artículo indicar:
       - Objetivo: cuál es el objetivo de la investigación, es decir a qué problema real está aplicando la clasificación.
       - Cómo utilizan las técnicas de clasificación, si realizan alguna adaptación de los algoritmos indicarse.
       - Principales resultados de la aplicación y de la investigación.

3. Clasificación de mensajes de odio

   ## Objetivos

   Mediante este trabajo se pretende que el estudiante ponga en práctica la aplicación de un proceso completo de machine learning a la clasificación de mensajes de odio.

   El objetivo es generar un proyecto completo de machine learning para clasificar mensajes de odio. Debe detallar los pasos que hay que realizar para la clasificación de mensajes, así como una evaluación de los resultados.

   - Decidir la técnica de aprendizaje automático a utilizar
   - Analizar diferentes modelos de aprendizaje supervisado para la clasificación de mensajes de odio.
   - Evaluar los resultados obtenidos por cada modelo en términos de precisión, *recall*, y *f1*.

   ## Descripción de la actividad

   La empresa SureTech Innovations quiere implementar un clasificador de mensajes de odio. Para ello se deben entrenar diferentes modelos de clasificación, evaluar el rendimiento de cada uno de ellos, y finalmente, decidir cuál sería el mejor.

   Para llevar a cabo esta actividad cuentas con el dataset simplificado de HateSpeech en la siguiente URL: https://github.com/almudenaris/TAA/blob/main/out.csv

   Los pasos que se deben seguir para desarrollar esta actividad son:

   1. ¿Qué tarea de aprendizaje automático se pretende resolver? ¿Qué análisis previos serían necesarios realizar para saber si es posible construir el modelo que buscamos? Realiza un análisis exploratorio de datos adecuado a la tarea que se pretende resolver y al dataset facilitado. Explica con detalle, en base a la tarea que se quiere resolver, qué análisis serían necesarios realizar sobre los datos.
   2. En base a la tarea que se pide realizar y a las características del dataset decide qué algoritmo o algoritmos se deben utilizar. Implementa tres modelos. Realiza los entrenamientos necesarios para cada uno de ellos. Explica por qué son convenientes los algoritmos elegidos.
   3. Realiza una explicación de las métricas de evaluación que se deben utilizar para valorar la bondad del modelo. Justifica la decisión de las elegidas. ¿Cómo habría que evaluar el modelo? Evalúa los modelos entrenados en el punto anterior y explica los resultados obtenidos.

   ## Dataset

   El dataset original proporcionado en el proyecto transversal ha sido adaptado para la realización de esta actividad. Esa adaptación ha incluido:

   - Eliminación de nulos y duplicados
   - Eliminación de URLs, emojis y menciones a los periódicos
   - Eliminación de filas vacías
   - Limpieza y homogeneización de datos:
     - Convertir la totalidad del texto a minúscula
     - Eliminar signos de puntuación
     - Eliminar números
     - Eliminar espacios en blanco adicionales
     - Eliminar palabras con longitud menor a 2 caracteres
     - Eliminar *stopwords*
     - Tokenización
     - Lematización
   - Proceso de extracción de características:
     - Conteo de palabras positivas (A)
     - Conteo de palabras negativas (B)
     - Conteo del número de bigrams más comunes (C)
     - Conteo del número de menciones a otros usuarios (D)
     - Categoría del sentimiento según librería ‘pysentimiento’ en español (E)
   - Estandarización de las características (A_t,..E_t)
   - Combinación de características f1∗fif1∗fi (iA..iE) (Valor1,..Valor10).

   *Nos encontramos ante un problema de clasificación binaria. Se pretende generar un modelo de aprendizaje supervisado para clasificar mensajes como "odio" (1) o "no odio" (0) en base al contexto y ciertas características.*

   Antes de entrenar el modelo, es básico realizar un Análisis Exploratorio de Datos (EDA). Que nos permitirá tener una visión de la distribución de los datos. Análisis:

   - Carga y revisión de los datos del dataset.
   - Determinar si tenemos un dataset balanceado con respecto a la varibale objetivo.
   - Revisar datos textuales (longitud promedio de los comentarios, frecuencia de palabras, etc..)
   - Análisis de las correlaciones




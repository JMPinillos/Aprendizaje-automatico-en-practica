# Aprendizaje Automático Supervisado
En esta carpeta se recopilan diversas actividades desarrolladas en el ámbito del aprendizaje automático supervisado, abordando tanto problemas de regresión como de clasificación. Cada práctica se estructura como un flujo completo de *machine learning*, incluyendo análisis exploratorio de datos (EDA), tratamiento y limpieza de datos, entrenamiento de modelos, evaluación de métricas y conclusiones. Además, en algunas actividades se incluye una búsqueda y análisis de literatura científica aplicada a los algoritmos trabajados.





## Notebooks

### Regresión lineal y árboles de decisión para predicción ambiental
Este proyecto aborda la predicción de la calidad del aire a partir de sensores químicos integrados en estaciones urbanas. Se desarrolla un flujo completo de *machine learning* sobre un conjunto de datos real del *<u>UCI Air Quality Dataset</u>*, combinando técnicas de regresión lineal múltiple y árboles de decisión para modelar la relación entre contaminantes y condiciones ambientales.

Incluye un análisis exploratorio exhaustivo, imputación de valores ausentes, codificación y normalización, seguido por la evaluación comparativa de modelos mediante métricas de error. El trabajo se completa con la revisión de literatura científica reciente, conectando la teoría con aplicaciones reales.

[🔗 `Regresión_lineal_y_árboles_de_decisión_para_tareas_de_regresión.ipynb`](Regresión_lineal_y_árboles_de_decisión_para_tareas_de_regresión.ipynb)



### Clasificación geospacial con *Random Forest* y SVM
Este estudio técnico aplica algoritmos de clasificación avanzada al *dataset <u>Covertype</u>*, con el objetivo de predecir el tipo de cobertura forestal utilizando variables cartográficas obtenidas de sistemas GIS. Se implementan y comparan modelos de *Random Forest* y *Support Vector Machines*, incorporando técnicas de preprocesamiento, escalado, validación cruzada y análisis de correlaciones.

El proyecto destaca por su enfoque aplicado a datos geoespaciales binarios y por el análisis crítico del rendimiento de los modelos en escenarios de clasificación multicategoría. Se complementa con la revisión de un artículo científico que profundiza en el uso de estas técnicas en problemas reales.

[🔗 `Clasificación_con_máquinas_de_vectores_de_soporte_y_random_forest.ipynb`](Clasificación_con_máquinas_de_vectores_de_soporte_y_random_forest.ipynb)



### Clasificación automática de mensajes de odio en español
Este proyecto simula un caso real de despliegue de un modelo de clasificación binaria en el contexto del social *media monitoring*. Se parte de un *dataset* anonimizado con comentarios en español y se implementa un *pipeline* completo de procesamiento del lenguaje natural (NLP) y *machine learning*, desde la limpieza textual avanzada (lemmatización, *stopwords*, signos, *emojis*, bigramas, sentimientos) hasta la extracción combinada de características lingüísticas y sentimentales.

Se entrenan y evalúan tres modelos supervisados, optimizados para detectar discurso de odio, y se aplican métricas de evaluación ajustadas a escenarios de desbalanceo. El resultado es un modelo validado, interpretado y justificado que podría integrarse en un sistema de moderación automática.

[🔗`Clasificación_de_mensajes_de_odio.ipynb`](Clasificación_de_mensajes_de_odio.ipynb)



<center>by <strong>Jose Manuel Pinillos</strong></center>
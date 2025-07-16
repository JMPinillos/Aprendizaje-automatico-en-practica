# Procesamiento del Lenguaje Natural (PLN)

Esta sección del repositorio recopila prácticas centradas en el desarrollo de modelos de aprendizaje automático aplicados al procesamiento del lenguaje natural, con especial énfasis en el idioma español. Las actividades abordan tareas clave como la clasificación de texto y el reconocimiento de entidades nombradas, combinando técnicas tradicionales de vectorización con modelos preentrenados basados en *transformers*.

Cada notebook sigue una estructura completa, desde la exploración inicial y el tratamiento del texto, hasta la construcción y evaluación de modelos. Se analizan métricas de rendimiento adaptadas al problema, y se incluyen reflexiones sobre el uso práctico de cada técnica en entornos reales.



## Notebooks

### Reconocimiento de entidades nombradas (NER)

Este trabajo aborda la tarea de *Named Entity Recognition* sobre un corpus anotado manualmente en español. Tras aplicar técnicas de preprocesamiento textual, se implementa una red neuronal densa sobre secuencias codificadas con etiquetas *BIO*, entrenada con una función de pérdida categórica y métricas de exactitud por clase.

El estudio se centra en comprender el comportamiento del modelo al identificar correctamente entidades como nombres, ubicaciones y organizaciones, y se acompaña de visualizaciones de predicciones y matrices de confusión para cada clase.

[🔗 `Named_Entity_Recognition.ipynb`](1-Named_Entity_Recognition/Named_Entity_Recognition.ipynb)



### Clasificación de texto con *word embeddings* y *transformers*

Este proyecto compara dos aproximaciones para la clasificación de mensajes en español. La primera utiliza una arquitectura basada en *word embeddings* y capas densas, mientras que la segunda incorpora un modelo *transformer* preentrenado, adaptado mediante *fine-tuning*.

El trabajo incluye la preparación del corpus, tokenización con *AutoTokenizer*, vectorización, entrenamiento supervisado y análisis comparativo entre ambos enfoques. Se visualizan métricas clave como la *exactitud*, la matriz de confusión y las predicciones para evaluar el impacto de los *embeddings* frente al uso de modelos del estado del arte.

[🔗 `Word_embeddings_y_transformers_para_clasificación_de_texto.ipynb`](2-PLN_Clasificación_transformers/Word_embeddings_y_transformers_para_clasificación_de_texto.ipynb)



<center>by <strong>Jose Manuel Pinillos</strong></center>
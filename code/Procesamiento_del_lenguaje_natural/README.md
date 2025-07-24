# Procesamiento del Lenguaje Natural (PLN)

Esta sección del repositorio recopila prácticas centradas en el desarrollo de modelos de aprendizaje automático aplicados al procesamiento del lenguaje natural, con especial énfasis en el idioma español. Las actividades abordan tareas clave como la clasificación de texto y el reconocimiento de entidades nombradas, combinando técnicas tradicionales de vectorización con modelos preentrenados basados en *transformers*.

Cada notebook sigue una estructura completa, desde la exploración inicial y el tratamiento del texto, hasta la construcción y evaluación de modelos. Se analizan métricas de rendimiento adaptadas al problema, y se incluyen reflexiones sobre el uso práctico de cada técnica en entornos reales.



## Notebooks

### Reconocimiento de entidades nombradas (NER)

Este trabajo aborda la tarea de *Named Entity Recognition* sobre un corpus anotado manualmente en español. Tras aplicar técnicas de preprocesamiento textual, se implementa una red neuronal densa sobre secuencias codificadas con etiquetas *BIO*, entrenada con una función de pérdida categórica y métricas de exactitud por clase.

El estudio se centra en comprender el comportamiento del modelo al identificar correctamente entidades como nombres, ubicaciones y organizaciones, y se acompaña de visualizaciones de predicciones y matrices de confusión para cada clase.

🔗 [`Named-Entity-Recognition.ipynb`](1-Named-Entity-Recognition/Named-Entity-Recognition.ipynb)



### Clasificación de mensajes en inglés con *word embeddings* y *transformers*

Este proyecto aborda la clasificación de mensajes escritos en inglés según su intensidad de odio, etiquetados en una escala del 1 al 5. Se comparan dos aproximaciones: un modelo neuronal tradicional entrenado desde cero y un modelo *transformer* preentrenado.

La actividad permite comparar el rendimiento entre modelos simples y modelos avanzados de *transformers*, mostrando una mejora significativa en la capacidad predictiva al utilizar modelos preentrenados.

🔗 [`Word_embeddings_y_transformers_para_clasificación_de_texto.ipynb`](2-Word_embedings_y_transformers_para_clasificación_de_texto/Word_embedings_y_transformers_para_clasificación_de_texto.ipynb)



<center>by <strong>Jose Manuel Pinillos</strong></center>
# Procesamiento del Lenguaje Natural (PLN)

Esta sección del repositorio recoge prácticas centradas en el desarrollo de modelos de aprendizaje profundo aplicados al procesamiento del lenguaje natural. Los trabajos se enfocan en tareas clave como la clasificación de texto y el reconocimiento de entidades nombradas, empleando técnicas modernas como *word embeddings*, *LSTM*, y modelos basados en *transformers*.

Cada notebook implementa un flujo completo que incluye la vectorización del texto, el diseño de arquitecturas específicas, el entrenamiento supervisado y la evaluación del rendimiento con métricas adaptadas a la naturaleza lingüística del problema. Estas actividades reflejan el dominio de las técnicas más actuales de PLN y su aplicabilidad a contextos reales en español.

---

## Notebooks

### 🧾 Reconocimiento de entidades nombradas (NER)

Este trabajo aborda la tarea de *Named Entity Recognition* sobre un corpus anotado en español. A través de técnicas de tokenización y codificación *BIO*, se implementa un modelo secuencial con *LSTM* bidireccional y *embedding* de palabras para identificar entidades como nombres, lugares u organizaciones.  
El estudio incluye el análisis del comportamiento del modelo con diferentes funciones de activación, tamaños de ventana y parámetros de regularización, así como la evaluación detallada con métricas por clase y matriz de confusión. Se demuestra la viabilidad del enfoque en contextos de procesamiento de información estructurada y extracción automática de conocimiento.

[🔗 `Named_Entity_Recognition.ipynb`](1-Named_Entity_Recognition/Named_Entity_Recognition.ipynb)

---

### 🧠 Clasificación de texto con *word embeddings* y *transformers*

Este proyecto analiza la clasificación de mensajes en español utilizando diferentes representaciones vectoriales del lenguaje. Se comparan dos enfoques principales: redes neuronales recurrentes con *word embeddings* entrenados desde cero, y el uso de *transformers* multilingües preentrenados mediante la arquitectura *BERT*.  
La actividad incluye el análisis de métricas de evaluación, visualización de *attention maps*, impacto del *fine-tuning* y adaptación del tokenizador. Se realiza un análisis comparativo entre las dos metodologías, evidenciando la superioridad de los modelos *transformer* en tareas de clasificación semántica compleja.

[🔗 `Word_embeddings_y_transformers_para_clasificación_de_texto.ipynb`](2-PLN_Clasificación_transformers/Word_embeddings_y_transformers_para_clasificación_de_texto.ipynb)

---

<center>by <strong>Jose Manuel Pinillos</strong></center>
# README

## Reporte de reproducibilidad del artículo:

> Missau, L. D. (2024). *The Role of Social Sciences in the Study of Misinformation: A Bibliometric Analysis of Web of Science and Scopus Publications (2017‑2022)*. *Tripodos*, 56, 141‑166. [https://doi.org/10.51698/tripodos.2024.56.01](https://doi.org/10.51698/tripodos.2024.56.01)

Este trabajo fue realizado en el marco del curso de **Ciencia Abierta** del Magíster en Ciencias Sociales Mencion en Sociología de la Modernización de la Universidad de Chile. El objetivo es evaluar la reproducibilidad del estudio original utilizando las *Transparency and Openness Promotion (TOP) Guidelines* como marco de referencia, y replicar parcialmente tres resultados: la Tabla 2 (información general de bases de datos), la Figura 5 y la Figura 6 (redes de co-ocurrencia de palabras clave en Scopus y WOS).

## Estructura del repositorio

```
├── reproducibilidad.qmd           # Documento principal (Quarto)
├── bibliometrix.R                 # Script de R utilizado en la reproducción
├── scopus.bib                     # Metadatos exportados de Scopus (formato BibTeX)
├── wos.txt                        # Metadatos exportados de WOS (formato texto plano)
├── img/                           # Imágenes del paper original y reproducciones
│   ├── tabla_2.jpeg
│   ├── figura_5.jpeg
│   ├── figura_6.jpeg
│   ├── figura_5_repro.jpeg
│   └── figura_6_repro.jpeg
└── README.md
```

## Requisitos

- [R](https://cran.r-project.org/)
- [RStudio](https://posit.co/download/rstudio-desktop/)
- [Quarto](https://quarto.org/docs/get-started/)
- Paquete de R: [`bibliometrix`](https://www.bibliometrix.org/)

## Cómo reproducir

1. Clonar este repositorio:

```bash
git clone https://github.com/[USUARIO]/reporte-reproducibilidad-missau.git
cd reporte-reproducibilidad-missau
```

2. Abrir el proyecto en RStudio y asegurarse de tener `bibliometrix` instalado.

3. Renderizar el reporte:

```bash
quarto render reporte_reproducibilidad.qmd
```

> **Nota:** Los archivos `scopus.bib` y `wos.txt` deben estar en el directorio raíz del proyecto para que los script de R se ejecuten correctamente desde el archivo qmd.

## Resultados principales

La reproducción parcial del estudio arroja diferencias con los datos originales de Missau (2024), principalmente porque las bases de datos (Scopus y WOS) se actualizan continuamente y la búsqueda fue realizada en una fecha distinta (mayo 2026 vs. abril 2023). No obstante, las tendencias generales se mantienen: predominancia de "fake news" como keyword en Scopus y "misinformation" en WOS, y un crecimiento sostenido de publicaciones entre 2017 y 2022.

## Autor

**Cristóbal Merchan Farfán**
Bibliotecólogo Encargado de Tecnología y servicios digitales de la Unidad de Bibliotecas de la Universidad de O'Higgins

## Licencia

Este trabajo se distribuye bajo licencia [CC BY-NC 4.0] (https://creativecommons.org/licenses/by-nc/4.0/deed.es), en coherencia con los principios de ciencia abierta discutidos en el reporte.

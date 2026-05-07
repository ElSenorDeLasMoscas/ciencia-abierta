#Bibliometrix----

##llamar bibliometrix----
library(bibliometrix)

##ingresar a interfaz web----
biblioshiny()

##Carga y procesamiento inicial----

###cargar wos.txt y scopus.bib ----
wos_raw <- convert2df(file = "wos.txt", dbsource = "wos", format = "plaintext")
scopus_raw <- convert2df(file = "scopus.bib", dbsource = "scopus", format = "bibtex")

###Filtrar 2017-2022
wos_df <- subset(wos_raw, PY >= 2017 & PY <= 2022)
scopus_df <- subset(scopus_raw, PY >= 2017 & PY <= 2022)

###Combinar df---- 
merged_data <- mergeDbSources(wos_df, scopus_df, remove.duplicated = TRUE)

##Analisis. Tabla 2----

###Analisis merged_df----
results <- biblioAnalysis(merged_data)
summary(results)

###Análisis Scopus_df ----
results_scopus <- biblioAnalysis(scopus_df)
summary(results_scopus)

###Análisis WoS_df----
results_wos <- biblioAnalysis(wos_df)
summary(results_wos)

##Analisis. Figura 5 y 6----

###Co-ocurrencia scopus.bib----
NetMatrix_scopus <- biblioNetwork(scopus_df, 
                           analysis = "co-occurrences", 
                           network = "keywords", 
                           sep = ";")

###Co-ocurrencia wos.txt----
NetMatrix_wos <- biblioNetwork(wos_df, 
                           analysis = "co-occurrences", 
                           network = "keywords", 
                           sep = ";")

###Graficar red scopus----
net_plot_scopus <- networkPlot(NetMatrix_scopus, 
                        n = 40,             # Número de palabras principales a mostrar
                        Title = "Figura 5. Red de co-ocurrencia de palabras clave de autor_s. Scopus", 
                        type = "fruchterman", # Algoritmo de distribución
                        size = TRUE,# Tamaño de los nodos
                        size.cex = TRUE,
                        remove.multiple = TRUE, 
                        labelsize = 0.8,    # Tamaño de la letra
                        edgesize = 3,       # Grosor de las líneas de conexión
                        alpha = 0.5,
                        weighted = TRUE,
                        cluster = "walktrap") # Para que agrupe por colores


###Graficar red wos----
net_plot_wos <- networkPlot(NetMatrix_wos, 
                        n = 40,             # Número de palabras principales a mostrar
                        Title = "Figura 6. Red de co-ocurrencia de palabras clave de autor_s. Web of Science (WOS)", 
                        type = "fruchterman", # Algoritmo de distribución
                        size = TRUE,# Tamaño de los nodos
                        size.cex = TRUE,
                        remove.multiple = TRUE, 
                        labelsize = 0.8,    # Tamaño de la letra
                        edgesize = 3,       # Grosor de las líneas de conexión
                        alpha = 0.5,
                        weighted = TRUE,
                        cluster = "walktrap") # Para que agrupe por colores (clusters)

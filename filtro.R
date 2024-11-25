ensadult_2022 <- read.table("ensadul2022_entrega_w.csv", header = T, sep = ";", fill=TRUE)
ensadult_filt <- ensadult_2022[which(ensadult_2022$edad >= 60),]
ensadult_filt <- ensa_filt[,c(1,2,33:36,38:43,446)]
#ensa_filt <- ensadult_2022[which(ensadult_2022$a1001f == 1),]


frec_alimento <- read.csv("ensafrec2022.csv", encoding="UTF-8")
frec_tortilla <- read.csv("ensafrec2022_tor.csv", encoding="UTF-8")
frec_suplemet <- read.csv("ensafrec2022_sup.csv", encoding="UTF-8")

# Obtener los FOLIO_INT de ensa_filt
folios_validos <- ensa_filt$FOLIO_INT

# Filtrar por FOLIO_INT
ensafrecalim_filtrado <- frec_alimento[frec_alimento$FOLIO_INT %in% folios_validos, ]
ensafrectort_filtrado <- frec_tortilla[frec_tortilla$FOLIO_INT %in% folios_validos, ]
ensafrecsupl_filtrado <- frec_suplemet[frec_suplemet$FOLIO_INT %in% folios_validos, ]

#!/bin/bash

cotizaciones=$(curl -s http://www.bna.com.ar/Personas/  | grep -A 2 "Dolar U.S.A" | grep "<td>"  | head -2 | sed -e 's/<td>//' | sed -e 's/<\/td>//' | tr '\r' '\n')
compra=$(echo ${cotizaciones} | cut -d' ' -f1)
venta=$(echo ${cotizaciones} | cut -d' ' -f2)
fecha=$(date "+%d-%m-%Y %H:%M")
echo -e "\n\033[1;32m Cotizacion compra Billete Dolar USA Banco Nacion \033[1;33m $ ${compra} \033[1;32mpesos - Fecha ${fecha} \033[1;0m\n"
echo -e "\n\033[1;32m Cotizacion venta Billete Dolar USA Banco Nacion \033[1;31m $ ${venta} \033[1;32mpesos - Fecha ${fecha} \033[1;0m\n"



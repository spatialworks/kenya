## load library
if(!require(devtools)) install.packages("devtools")
if(!require(kenya)) install_github("validmeasures/kenya")

if(!require(rgdal)) install.pacakges("rgdal")
if(!require(rgeos)) install.packages("rgeos")

country <- gadmr::get_geopackage(country = "KEN", layer = 0)

png(filename = "inst/figures/kenya.png", width = 2, height = 2, units = "in", res = 300)

par(mar = c(0,0,0,0), pty = "s", bg = NA)

plot(country, border = "#D84942", col = "#D77C79", lwd = 1)

dev.off()

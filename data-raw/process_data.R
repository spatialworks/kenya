################################################################################
#
# Libraries
#
################################################################################
require(raster)
require(rgdal)
require(readxl)


################################################################################
#
# Updated wards from Humanitarian Data Exchange
#
################################################################################
wards_url <- "https://data.humdata.org/dataset/e8d06ae7-740b-4491-8749-43f81700cf41/resource/858129b2-7197-4ffe-b34f-c2091b307b2c/download/kenya_wards.zip"
temp <- tempfile()
download.file(url = wards_url, destfile = temp)
unzip(temp, exdir = tempdir())
ward <- rgdal::readOGR(dsn = paste(tempdir(),
                                   "/Kenya_Wards",
                                   sep = ""),
                       layer = "kenya_wards",
                       verbose = FALSE)
unlink(temp); unlink(tempdir())
usethis::use_data(ward, overwrite = TRUE)

################################################################################
#
# LHZ
#
################################################################################
lhz_url <- "http://fews.net/data_portal_download/download?data_file_path=http%3A//shapefiles.fews.net.s3.amazonaws.com/LHZ/KE_LHZ_2011.zip"
temp <- tempfile()
download.file(url = lhz_url, destfile = temp)
unzip(temp, exdir = tempdir())
lhz <- rgdal::readOGR(dsn = tempdir(),
                      layer = "KE_LHZ_2011",
                      verbose = FALSE)
unlink(temp); unlink(tempdir())
usethis::use_data(lhz, overwrite = TRUE)

################################################################################
#
# Settlements
#
################################################################################
settlements_url <- "https://data.humdata.org/dataset/58f70c23-8591-475a-8012-54cdf4eb8ed7/resource/7f8e61f9-9809-4859-93df-ef7be48d2872/download/kenpopulatedplaces2002depha.zip"
temp <- tempfile()
download.file(url = settlements_url, destfile = temp)
unzip(temp, exdir = tempdir())
settlements <- rgdal::readOGR(dsn = paste(tempdir(),
                                          "/KEN_Populated places_2002_DEPHA",
                                          sep = ""),
                              layer = "KEN_Populated places_2002_DEPHA",
                              verbose = FALSE)
unlink(temp); unlink(tempdir())

settlements$FULL_NAME <- stringr::str_remove(settlements$FULL_NAME, "'")
settlements$FULL_NAME_ <- stringr::str_remove(settlements$FULL_NAME_, "'")

usethis::use_data(settlements, overwrite = TRUE)

################################################################################
#
# Villages
#
################################################################################

villages <- read_xls(path = "kenya_villages.xls", sheet = 1)

villages <- readOGR(dsn = "data-raw/kenya_villages", layer = "kenya_villages", verbose = FALSE)


pcodes <- "https://drive.google.com/file/d/1tmCb6BcJKKn8sOuaWsV_RN4P3MvQV4wb/view?usp=drive_web"
markets <- "https://docs.google.com/spreadsheets/d/1O2Oipg3oO_UL90wPsxJqU-xMV3SNAOXzZ5DKfFMYI6g/edit?usp=drive_web"


################################################################################

x <- read.delim(file = "data-raw/KE.txt", header = FALSE)







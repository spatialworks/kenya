################################################################################
#
#' kenya
#'
#' Datasets for Use in Designing Surveys in Kenya
#'
#' Designing surveys require relevant datasets to be used as basis for
#' sample size calculations, sampling design, survey planning/logistics and
#' survey implementation. These include datasets on population, lists of sampling
#' clusters, map datasets for spatial sampling, and previous survey datasets that
#' can be used for estimating indicator variance and design effects. This package
#' contains relevant datasets for use in designing surveys in Kenya.
#'
#' @docType package
#' @name kenya
#'
#
################################################################################
NULL

################################################################################
#
#' ward
#'
#' Administrative Level 3 (wards) map of Kenya
#'
#' @format A SpatialPolygonsDataFrame with 1450 features:
#' \describe{
#' \item{\code{gid}}{Geographic identifier}
#' \item{\code{pop2009}}{Ward population in 2009}
#' \item{\code{county}}{Name of county}
#' \item{\code{subcounty}}{Name of subcounty}
#' \item{\code{ward}}{Name of ward}
#' \item{\code{uid}}{Unique identifier}
#' \item{\code{scuid}}{Subcounty unique identifier}
#' \item{\code{cuid}}{County unique identifier}
#' }
#'
#' @source \url{https://data.humdata.org/dataset/administrative-wards-in-kenya-1450}
#'
#' @examples
#' # View ward SpatialPolygonsDataFrame
#' ward
#'
#
################################################################################
"ward"

################################################################################
#
#' lhz
#'
#' Livelihood zones map of Kenya
#'
#' @format A SpatialPolygonsDataFrame with 24 features:
#' \describe{
#' \item{\code{FNID}}{Feature identifier}
#' \item{\code{EFF_YEAR}}{Year}
#' \item{\code{COUNTRY}}{Name of country}
#' \item{\code{LZNUM}}{Livelihood zone number}
#' \item{\code{LZCODE}}{Livelihood zone code}
#' \item{\code{LZNAMEEN}}{Livelihood zone name - English}
#' \item{\code{LZNAMEFR}}{Livelihood zone name - French}
#' \item{\code{LZNAMESP}}{Livelihood zone name - Spanish}
#' \item{\code{LZNAMEPT}}{Livelihood zone name - Portuguese}
#' \item{\code{CLASS}}{Livelihood zone class}
#' }
#'
#' @source \url{http://fews.net/east-africa/kenya/livelihood-zone-map/march-2011}
#'
#' @examples
#' # View lhz SpatialPolygonsDataFrame
#' lhz
#'
#
################################################################################
"lhz"

################################################################################
#
#' settlements
#'
#' Settlements of Kenya
#'
#' @format A SpatialPointsDataFrame with 2675 features:
#' \describe{
#' \item{\code{Z__}}{Z__}
#' \item{\code{UFI}}{Unique feature identifier (UTM)}
#' \item{\code{UNI}}{Unique name identifier (UTM)}
#' \item{\code{DLAT}}{Latitude coordinates (degrees)}
#' \item{\code{DLONG}}{Longitude coordinates (degrees)}
#' \item{\code{LAT}}{Latitude coordinate (UTM)}
#' \item{\code{LONG}}{Longitude coordinate (UTM)}
#' \item{\code{MGRS}}{Military Grid Reference System code}
#' \item{\code{FC}}{Feature code}
#' \item{\code{DSG}}{Description code}
#' \item{\code{PC}}{Place code}
#' \item{\code{CC1}}{Country code 1}
#' \item{\code{ADM1}}{Administrative level 1 code}
#' \item{\code{ADM2}}{Administrative level 2 code}
#' \item{\code{DIM}}{DIM}
#' \item{\code{CC2}}{Country code 2}
#' \item{\code{NT}}{NT}
#' \item{\code{LC}}{LC}
#' \item{\code{SHORT_FORM}}{Short form}
#' \item{\code{GENERIC}}{Generic}
#' \item{\code{SORT_NAME}}{Sort name}
#' \item{\code{FULL_NAME}}{Full name}
#' \item{\code{FULL_NAME_}}{Full name}
#' \item{\code{NEWDLAT}}{New latitude (degrees)}
#' \item{\code{NEWDLONG}}{New longitude (degrees)}
#' \item{\code{CODE}}{Code}
#' \item{\code{DISTRICT}}{District name}
#' \item{\code{REGION}}{Region name}
#' \item{\code{LOCATION}}{Location name}
#' \item{\code{SUB_LOCATI}}{Sub-location name}
#' }
#'
#' @source \url{https://data.humdata.org/dataset/kenya-settlements-0}
#'
#' @examples
#' # View settlements SpatialPointsDataFrame
#' settlements
#'
#
################################################################################
"settlements"




.onAttach <- function(libname, pkgname) {
  packageStartupMessage(paste(strwrap(
    'USGS Support Package: 
    https://owi.usgs.gov/R/packages.html#support
    Report issues and ask questions:
    https://github.com/USGS-R/wateRuse/issues'),
    collapse='\n'))
}

#' wateRuse
#'
#' \tabular{ll}{
#' Package: \tab wateRuse\cr
#' Type: \tab Package\cr
#' License: \tab Unlimited for this package, dependencies have more restrictive licensing.\cr
#' Copyright: \tab This software is in the public domain because it contains materials
#' that originally came from the United States Geological Survey, an agency of
#' the United States Department of Interior. For more information, see the
#' official USGS copyright policy at
#' https://www.usgs.gov/visual-id/credit_usgs.html#copyright\cr
#' LazyLoad: \tab yes\cr
#' }
#'
#' Collection of functions to help parse and analyze AWUDS data.
#'
#' @name wateRuse-package
#' @docType package
NULL


#' Included data
#' 
#'\itemize{
#'  \item{category}{category data.frame}
#'  \item{county}{county data.frame}
#'  \item{dataelement}{dataelement data.frame}
#'  \item{huc8}{huc8 data.frame}
#'  \item{calculation}{calculation data.frame}
#'  \item{calculation.formula}{calculation.formula data.frame}
#'}
#' @name lookupTables
#' @docType data
#' @aliases category county dataelement huc8 calculation calculation.formula stateCd
#' @export category county dataelement huc8 calculation calculation.formula stateCd
#'
#' @examples 
#' head(category)
#' head(county)
#' head(dataelement)
#' head(huc8)
#' head(calculation)
#' head(calculation.formula)
NULL

#' Example Water Use Data
#'
#' Example dump file read in as RData format.
#'
#' This file is modified from a dataset retrieved from the U.S. Geological Survey Aggregated Water Use Database (AWUDS) on April 27, 2016, and may have been revised since this date. The data are approved and contains county-level data for Hawaii and Delaware. The file contains data for multiple years, and all USGS categories of water use data. 
#'
#' @name wUseSample
#' @rdname wUseSample
#' @docType data
#' @keywords water use data
#' @examples 
#' head(wUseSample)
NULL

#' County Polygons for use in mapping water use data.
#'
#' County polygons from: Siczewicz, Peter. U.S. Historical Counties (Generalized .001 deg). Dataset. 
#' Emily Kelley, digital comp. Atlas of Historical County Boundaries, ed. by John H. Long. 
#' Chicago: The Newberry Library, 2011. Available online from http://publications.newberry.org/ahcbp
#'
#' @name histCounties
#' @rdname histCounties
#' @export
#' @keywords county polygons
#' @import sp
#' @examples 
#' names(histCounties@data)
#' \dontrun{
#' plot(histCounties[which(histCounties@data$STATE_TERR == "New Jersey"),])
#' }
NULL

#' HUC08 Polygons for use in mapping water use data.
#'
#' HUC08 snapshot was taken from the June 30th 2016 snapshot of the Watershed Boundary Dataset.
#'
#' @name huc08Poly
#' @rdname huc08Poly
#' @export
#' @keywords HUC08 Waterhsed polygons
#' @import sp
#' @examples 
#' names(huc08Poly@data)
#' \dontrun{
#' plot(huc08Poly[which(huc08Poly@data$STATES == "IA"),])
#' }
NULL

# To remove note about no visible binding

data.element <- value <- "dplyr_variable"
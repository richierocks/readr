#' Missing strings
#'
#' Missing string by data creation software (Excel, SAS, Stata, SQL currently
#' supported).  Use this to set the \code{na.strings} argument in
#' \code{\link{read_table}}.
#' @param data_creator A string giving the data creation software
#' @return A character vector.
#' @examples
#' na_strings("excel")
#' @export
na_strings <- function(data_creator = c("generic", "excel", "sas", "stata", "sql")) {
  data_creator <- match.arg(data_creator)
  switch(
    data_creator,
    generic = "NA",
    excel = c("#N/A", "#NULL!", "#NUM!", "#REF!", "#VALUE!", "#DIV/0!", "#NAME?"),
    sas = ,
    stata = ".",
    sql = "NULL")
}

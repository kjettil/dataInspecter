#' give the time
#'
#' @return The time
#' @export
#'
#' @examples
#' time()
time <- function() {
  day_time <- substr(Sys.time(), 12, 19)

  if (day_time >= "06:00:00" && day_time <= "12:00:00") {

    return(paste("Good morning! The current time is", day_time))

  } else if (day_time >= "12:00:00" && day_time <= "18:00:00") {

    return(paste("Good afternoon! The current time is", day_time))

  } else if (day_time >= "18:00:00" && day_time <= "23:59:59") {

    return(paste("Good evening! The current time is", day_time))

  } else {

    return(paste("Good night! The current time is", day_time))
  }
}


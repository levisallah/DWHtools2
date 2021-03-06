#'getConfig
#'
#'Load configuration parameters for DB connection
#'This file is a tab separated txt file of the form:
#'
#'driverType=VALUE
#'
#'driverPath=VALUE
#'
#'connectPath=VALUE
#'
#'dbuser=VALUE
#'
#'dbpass=VALUE
#'
#'username=VALUE
#'
#'backend=VALUE
#'
#'@param file_path Path to the config file
#'@return config environment for DB connection
#'@export


getConfig <- function(file_path)
{
  # TODO: check that config_file exists
  if (!file.exists(file_path)) {stop(paste('Config File not found:',file_path,'does not exit'))}
  t <- read.table(file_path, sep = '=', header = F, as.is=T)
  config <- new.env()

  for (i in 1:nrow(t))
  {
    config[[t[i,1]]] <- t[i,2]
  }
  return(config)
}

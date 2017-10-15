devtools::use_data_raw()
devtools::use_data(prenoms)

devtools::use_package("assertthat")
devtools::use_package("prenoms")
devtools::use_package("readxl")
devtools::use_package("ggplot2")
devtools::use_package("dplyr")

devtools::use_vignette("ggplot2")
devtools::use_vignette("dplyr")
devtools::build_vignettes()

devtools::use_test("regex")
devtools::use_test("get_all_objets_from_r")
devtools::use_test("error_correction_propostion")
devtools::use_test("error_analysis")
devtools::use_test("catch_error")

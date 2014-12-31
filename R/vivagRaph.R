#' vivagRaph
#'
#' Interactive networks with the javascript library VivaGraph. 
#'
#' @import htmlwidgets
#'
#' @export
vivagRaph <- function(nodes,edges,options=NULL, width = NULL, height = NULL) {

  # forward options using x
  x = list(
    nodes=nodes,
    edges=edges,
    options=options
  )

  # create widget
  htmlwidgets::createWidget(
    name = 'vivagRaph',
    x,
    width = width,
    height = height,
    package = 'vivagRaph'
  )
}

#' Widget output function for use in Shiny
#'
#' @export
vivagRaphOutput <- function(outputId, width = '100%', height = '400px'){
  shinyWidgetOutput(outputId, 'vivagRaph', width, height, package = 'vivagRaph')
}

#' Widget render function for use in Shiny
#'
#' @export
renderVivagRaph <- function(expr, env = parent.frame(), quoted = FALSE) {
  if (!quoted) { expr <- substitute(expr) } # force quoted
  shinyRenderWidget(expr, vivagRaphOutput, env, quoted = TRUE)
}

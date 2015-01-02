#' vivagRaph
#'
#' Interactive networks with the javascript library VivaGraph. 
#'
#' @import htmlwidgets
#' @import jsonlite
#'
#' @export
#'
#'
#' @param nodes A data.frame with each row corresponding to a node in the network and columns corresponding to various nodes attributes.
#' @param edges A data.frame edge list where each row describes an edge in the network. Must have columns 'source' and 'target'.
#'
#' #examples
#'
#' Nodes=data.frame(c('A','B','C','D'),group=c(1,1,1,1))
#' Edges=data.frame(source=c(0,1,0,2),target=c(1,2,2,3))
#' vivagRaph(nodes=Nodes,edges=Edges)
#'
vivagRaph <- function(nodes,edges,options=NULL, width = NULL, height = NULL) {

  # forward options using x
  x = list(
    nodes=jsonlite::toJSON(nodes),
    edges=jsonlite::toJSON(edges)
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

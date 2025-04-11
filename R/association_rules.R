# association_rules.R
#' @title Generate Association Rules
#' @description Applies the Apriori algorithm to discover associations.
#' @param data A transactions object or coercible data.
#' @param support Minimum support for rules.
#' @param confidence Minimum confidence for rules.
#' @return A set of association rules.
#' @export
association_rules <- function(data, support = 0.01, confidence = 0.8) {
  trans <- as(data, "transactions")
  rules <- arules::apriori(trans, parameter = list(supp = support, conf = confidence))
  return(rules)
}

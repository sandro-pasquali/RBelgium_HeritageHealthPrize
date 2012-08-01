lowercase_names <- function(x){
	names(x) <- make.names(tolower(names(x)), allow_=FALSE)
	x
}
as.ram.ffdf <- function(x, index=NULL){
	## I prefer this function instead of always having to write x[,]
	require(ffbase)
  ffbase::ffdfget_columnwise(x = x, index=index)
}
accuracyEvaluator <- function(predicted, actual){
	(log(predicted + 1) - log(actual + 1))^2
}
getEvaluation <- function(x){
	sqrt(mean(x))
}
createAdditiveFormula <- function(y, x){
	as.formula(paste(paste(y, collapse="+"), "~  ", paste(x, collapse="+")))
}
fullrange <- function(x){
	max(x) - min(x)
}
q025 <- function(x){
	quantile(x, probs=0.025, names = FALSE)
}
q05 <- function(x){
	quantile(x, probs=0.05, names = FALSE)
}
q10 <- function(x){
	quantile(x, probs=0.10, names = FALSE)
}
q15 <- function(x){
	quantile(x, probs=0.15, names = FALSE)
}
q20 <- function(x){
	quantile(x, probs=0.20, names = FALSE)
}
q25 <- function(x){
	quantile(x, probs=0.25, names = FALSE)
}
q30 <- function(x){
	quantile(x, probs=0.30, names = FALSE)
}
q35 <- function(x){
	quantile(x, probs=0.35, names = FALSE)
}
q40 <- function(x){
	quantile(x, probs=0.40, names = FALSE)
}
q45 <- function(x){
	quantile(x, probs=0.45, names = FALSE)
}
q50 <- function(x){
	quantile(x, probs=0.50, names = FALSE)
}
q55 <- function(x){
	quantile(x, probs=0.55, names = FALSE)
}
q60 <- function(x){
	quantile(x, probs=0.60, names = FALSE)
}
q65 <- function(x){
	quantile(x, probs=0.65, names = FALSE)
}
q70 <- function(x){
	quantile(x, probs=0.70, names = FALSE)
}
q75 <- function(x){
	quantile(x, probs=0.75, names = FALSE)
}
q80 <- function(x){
	quantile(x, probs=0.80, names = FALSE)
}
q85 <- function(x){
	quantile(x, probs=0.85, names = FALSE)
}
q90 <- function(x){
	quantile(x, probs=0.90, names = FALSE)
}
q95 <- function(x){
	quantile(x, probs=0.95, names = FALSE)
}
q975 <- function(x){
	quantile(x, probs=0.975, names = FALSE)
}




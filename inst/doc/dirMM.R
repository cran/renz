## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(renz)
data(ONPG)

## ----echo=FALSE---------------------------------------------------------------
So <- c(0, 2.5, 5.0, 10.0, 15.0, 20.0)
vo <- c(0, 0.25, 0.63, 0.62, 0.82, 0.8)
s <- seq(0, 20, 0.1)
v <- 1 * s / (4 + s)
v_ <- 1 * So / (4 + So)
# v <- c(0.024, 0.036, 0.053, 0.060, 0.064)
plot(s, v, ylim = c(0,1), ty = "l", xlab = "[S] (mM)", ylab = "mM/min")
points(So, vo)
segments(2.5, 0.25, 2.5, v_[2], col = "blue")
segments(5, 0.63, 5, v_[3], col = "blue")
segments(10, 0.62, 10, v_[4], col = "blue")
segments(15, 0.82, 15, v_[5], col = "blue")
segments(20, 0.8, 20, v_[6], col = "blue")

## -----------------------------------------------------------------------------
data <- ONPG
library(knitr)
kable(data)

## -----------------------------------------------------------------------------
attributes(data)

## -----------------------------------------------------------------------------
data[ , 4:7] <- 1000 * data[ , 4:7]

## -----------------------------------------------------------------------------
oldmar <- par()$mar
oldmfrow <- par()$mfrow
par(mfrow = c(2, 2))
par(mar = c(4, 4,1,1))
for (i in 2:5){
  plot(data$ONPG, data[, i],
       ty = 'p', ylab = 'v (uM/min)', xlab = '[ONPG] (mM)')
}
par(mar = oldmar)
par(mfrow = oldmfrow)

## -----------------------------------------------------------------------------
oldmar <- par()$mar
oldmfrow <- par()$mfrow
par(mfrow = c(2, 2))
par(mar = c(4, 4,1,1))
for (i in 6:9){
  plot(data$ONPG, data[, i],
       ty = 'p', ylab = 'v (uM/min)', xlab = '[ONPG] (mM)')
}
par(mar = oldmar)
par(mfrow = oldmfrow)

## -----------------------------------------------------------------------------
data$v2[8] <- NA

## -----------------------------------------------------------------------------
dir.MM(data[ , c(1,8)], unit_v = "mM/min")


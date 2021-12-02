## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(renz)
library(knitr)

## ----include=FALSE------------------------------------------------------------
S <- c(1, 2, 4, 8, 12, 20, 30)
data <- lapply(S, sE.progress, time = 5, Km = 4, Vm = 50, plot = FALSE)

## ----echo=FALSE---------------------------------------------------------------
t <- data[[1]]
v <- round(-(t[2,2] - t[1,2])/(t[2,1] - t[1,1]), 1)
plot(t[ , 1], t[ , 2], ty = "b", xlab = "Time (min)", ylab = "[S] (mM)")
text(t[2,1], t[4, 2], v, col = "blue", cex = 0.7)
abline(t[1,2], -v, col = "blue")

## ----echo=FALSE---------------------------------------------------------------
t <- data[[2]]
v <- round(-(t[2,2] - t[1,2])/(t[2,1] - t[1,1]), 1)
plot(t[ , 1], t[ , 2], ty = "b", xlab = "Time (min)", ylab = "[S] (mM)")
text(t[2,1], 0.5, v, col = "blue", cex = 0.7)
abline(t[1,2], -v, col = "blue")

## ----echo=FALSE---------------------------------------------------------------
t <- data[[3]]
v <- round(-(t[2,2] - t[1,2])/(t[2,1] - t[1,1]), 1)
plot(t[ , 1], t[ , 2], ty = "b", xlab = "Time (min)", ylab = "[S] (mM)")
text(t[2,1], t[length(t-1), 2], v, col = "blue", cex = 0.7)
abline(t[1,2], -v, col = "blue")

## ----echo=FALSE---------------------------------------------------------------
t <- data[[4]]
v <- round(-(t[2,2] - t[1,2])/(t[2,1] - t[1,1]), 1)
plot(t[ , 1], t[ , 2], ty = "b", xlab = "Time (min)", ylab = "[S] (mM)")
text(t[3,1], t[length(t-1), 2], v, col = "blue", cex = 0.7)
abline(t[1,2], -v, col = "blue")

## ----echo=FALSE---------------------------------------------------------------
t <- data[[5]]
v <- round(-(t[2,2] - t[1,2])/(t[2,1] - t[1,1]), 1)
plot(t[ , 1], t[ , 2], ty = "b", xlab = "Time (min)", ylab = "[S] (mM)")
text(t[3,1], t[length(t-1), 2], v, col = "blue", cex = 0.7)
abline(t[1,2], -v, col = "blue")

## ----echo=FALSE---------------------------------------------------------------
t <- data[[6]]
v <- round(-(t[2,2] - t[1,2])/(t[2,1] - t[1,1]), 1)
plot(t[ , 1], t[ , 2], ty = "b", xlab = "Time (min)", ylab = "[S] (mM)")
text(t[3,1], t[length(t-1), 2], v, col = "blue", cex = 0.7)
abline(t[1,2], -v, col = "blue")

## ----echo=FALSE---------------------------------------------------------------
t <- data[[7]]
v <- round(-(t[2,2] - t[1,2])/(t[2,1] - t[1,1]), 1)
plot(t[ , 1], t[ , 2], ty = "b", xlab = "Time (min)", ylab = "[S] (mM)")
text(t[5,1], t[10, 2], v, col = "blue", cex = 0.7)
abline(t[1,2], -v, col = "blue")

## ---- echo=FALSE--------------------------------------------------------------
Sv <- data.frame(S = S, v = c(8.1, 14.4, 23, 32.1, 36.7, 41.3, 43.9))
names(Sv) <- c('[S] (mM)', 'v (mM/min)')
kable(t(Sv))

## -----------------------------------------------------------------------------
dir.MM(Sv, unit_v = "mM/min")

## ----echo=FALSE---------------------------------------------------------------
data <- round(data[[1]][, c(1,2)], 3)
names(data) <- c("t (min)", "[S] (mM)")
kable(data)

## ---- echo=FALSE--------------------------------------------------------------
plot(data[,1] , data[,2], ty = "b", xlab = "Time (min)", ylab = "[S] (mM)")

## -----------------------------------------------------------------------------
result <- int.MM(data)


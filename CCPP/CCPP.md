```
plot(CCPP$AT, CCPP$V)
pairs(CCPP)
model <- lm(PE~AT+V+AP+RH, data=CCPP)
or
model <- lm(PE~., data=CCPP)
summary(model)
summary(model)$coefficient
confint(model)
sigma(model)/mean(CCPP$PE)
```
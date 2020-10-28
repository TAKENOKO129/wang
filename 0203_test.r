#02.练习1.1
x <- c(1/1:1000)
atan(x)

#02.练习1.2
x <- c(1:1000)
y <- atan(1/x)
dx <- deriv(y~atan(x),"x",func = TRUE)
dx(x)
z <- c(dx(x))

#02.练习2
x == z
identical(x,z)
all.equal(x,z)
all.equal(x,z,tolerance=2)
all.equal(x,z,tolerance=9)
all.equal(x,z,tolerance=0)

#02.练习3
true_and_missing = TRUE
true_and_missing = NA
false_and_missing  = FALSE
false_and_missing = NA
mixed = TRUE
mixed = FALSE
mixed = NA
any(TRUE)
any(FALSE)
any(NA)
all(TRUE)
all(FALSE)
all(NA)


#03.1
class(Inf)
class(NA)
class(NaN)
class("")

typeof(Inf)
typeof(NA)
typeof(NaN)
typeof("")

mode(Inf)
mode(NA)
mode(NaN)
mode("")

storage.mode(Inf)
storage.mode(NA)
storage.mode(NaN)
storage.mode("")

#03.2
fac <- factor(sample(c("dog","cat","hamster","goldfish"),1000,replace = TRUE))
summary(fac)

#03.3
cabbage <- 1
vegetable <- 2
tomatoe <- 3
cucumber <- 4
ls(pattern= "a", all.names = TRUE)


class(TRUE)
class(1)
class("hello")
class(c(1:5))
class(0+2i)
class(c("she","you","are"))

?? + 1 == 1
all.equal(??+1,1)

gender <- factor(c("male","female","male","female")) 
levels(gender)
nlevels(gender)
as.integer(gender)

gender_char <- sample(c("female","male"),10000,replace = TRUE)
gender_fac <- as.factor(gender_char)
object.size(gender_char)
object.size(gender_fac)

as.character(gender)

is.factor(gender)
is.character("you")
is.logical(TRUE)
is.list(1)
is.list(list(a=1,b=1))

Is(pattern="^is",baseenv())

is.numeric(1)
is.numeric(1L)
is.integer(9)
is.integer(2L)
is.double(2.9)
is.double(1L)
is.double(4)

x <- "12.433"
as.numeric(x)
y <- c(2,12,344,45465)
as.data.frame(y)

x <- "1243.435"
class(x) <- "numeric"
is.numeric(x)

y <- c(3,34,4565)
print(y)
for (i in y) 
for (i in y)print(y)

num <- runif(30)
summary(num)

LETTERS
letters
letters[2:4]

fac <- factor(sample(letters[1:5],30,replace = TRUE))
summary(fac)
bool <- sample(c(TRUE,FALSE,NA),30,replace = TRUE)
summary(bool)

attributes(fac)
ls()
ls.str()
browseEnv()


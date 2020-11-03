#练习6-1
multiples_of_pi <- new.env()
multiples_of_pi[["two_pi"]] <- c(2*pi)
multiples_of_pi$three_pi <- c(3*pi)
assign(
  "four_pi",4*pi,                   
  multiples_of_pi
)

multiples_of_pi[["two_pi"]]
multiples_of_pi$three_pi
get("four_pi",multiples_of_pi)

ls(envir = multiples_of_pi)
ls.str(envir = multiples_of_pi)


#练习6-2
a_integer <- function(x){
  ifelse(x %% 2 == 0,T,F)
}
a_integer(Inf)
a_integer(0)
a_integer(-1)
a_integer(-Inf)
a_integer(NA)
a_integer(NaN)


#练习-3
a_function <- function(x,y){
  x+y
}
b_function <- function(x){
  list1 <- list("args" = pairlist(a_function),"body" = (x))
  list1
}

b_function(a_function(1,2))
b_function(a_function(2,9))


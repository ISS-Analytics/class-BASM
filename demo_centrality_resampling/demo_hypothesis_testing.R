# Create left-skewed distribution
a <- rnorm(n=50000, mean=5, sd=5)
b <- rnorm(n=20000, mean=20, sd=5)
c <- rnorm(n=10000, mean=35, sd=5)
pop <- c(a,b,c)
plot(density(pop), col="blue", lwd=2)
abline(v=mean(pop))
abline(v=median(pop), lty="dashed")

pop.mean = mean(pop)

# Test hypothesis that pop.mean = 12
## Take Sample
n = 300
sample = sample(pop, 300)
sample.mean = mean(sample)
sample.sd = sd(sample)
se = sd.sample/sqrt(n)

## Compare means
t = (pop.mean - sample.mean)/se

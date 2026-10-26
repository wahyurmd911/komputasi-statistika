# Statistical Computing Using R: Normal Distribution Simulation and Hypothesis Testing

## Project Overview

This project explores the application of statistical computing using R, with a focus on normal distribution simulation and hypothesis testing. The project demonstrates how statistical concepts can be implemented programmatically to generate random samples, compare population characteristics, conduct statistical tests, and evaluate testing outcomes through repeated simulations.

The main analysis focuses on implementing a two-sample t-test to compare the means of two simulated populations with different standard deviations. The simulation uses R's statistical functions to generate random observations, perform hypothesis testing, calculate p-values, and determine whether the null hypothesis should be rejected at a specified significance level.

In addition, the project uses repeated hypothesis testing to examine the proportion of tests that reject the null hypothesis. This provides practical experience in statistical simulation, hypothesis testing procedures, and the computational evaluation of statistical methods.

## Project Objectives

- Apply statistical computing techniques using R programming.
- Generate simulated populations using the normal distribution.
- Implement a two-sample t-test to compare population means.
- Evaluate statistical hypotheses using test statistics, critical values, and p-values.
- Conduct repeated hypothesis tests to examine rejection frequencies.
- Calculate the empirical proportion of rejected null hypotheses through simulation.

## Methodology

### 1. Normal Distribution Simulation

The project uses R's random number generation capabilities to simulate populations following normal distributions. Simulated data provide a controlled environment for exploring statistical concepts and observing how statistical procedures behave under specified population parameters.

The simulation defines two populations with the following characteristics:

| Parameter | Population 1 | Population 2 |
|---|---:|---:|
| Population size | 1,000 | 1,000 |
| Population mean | 20 | 20 |
| Population standard deviation | 10 | 1 |

The random seed is set to `5019` to support reproducibility of the random number generation.

### 2. Two-Sample t-Test

A two-sample t-test is implemented in R using the `t.test()` function. The procedure compares the means of samples drawn from the two simulated populations.

The hypotheses are defined as follows:

- **Null Hypothesis (H₀):** The population means are equal.
- **Alternative Hypothesis (H₁):** The population means are different.

The test uses a significance level of 5% (\(\alpha = 0.05\)). For each simulation, samples of 500 observations are drawn from each population with replacement.

The testing procedure evaluates the resulting test statistic and p-value to determine whether sufficient evidence exists to reject the null hypothesis.

### 3. Repeated Hypothesis Testing

To examine the behavior of the testing procedure, the project repeats the sampling and hypothesis-testing process 500 times.

During each iteration, the program records whether the null hypothesis is rejected based on the selected significance level. The number of rejections is then used to calculate the percentage of rejected tests.

This repeated simulation demonstrates how statistical procedures can be automated using loops, conditional statements, functions, and random sampling in R.

### 4. Statistical Evaluation

The implementation reports several statistical quantities to support the evaluation of each test:

- **Test Statistic:** Measures the standardized difference between the sample means.
- **Critical Value:** Provides a reference threshold for the rejection region.
- **P-value:** Quantifies the compatibility of the observed result with the null hypothesis.
- **Significance Level:** Defines the threshold used to determine statistical significance.
- **Rejection Frequency:** Counts the number of simulated tests that reject the null hypothesis.
- **Empirical Rejection Rate:** Expresses the proportion of rejected tests as a percentage of all repetitions.

## Implementation

The project is implemented in R using built-in statistical functions and fundamental programming structures.

Key components include:

- `rnorm()`: Generates random observations from normal distributions.
- `sample()`: Draws random samples from the simulated populations with replacement.
- `t.test()`: Performs the two-sample t-test.
- `qt()`: Calculates the theoretical t-distribution critical value.
- `set.seed()`: Sets the random seed for reproducible simulation.
- `for` loops and conditional statements: Automate repeated testing and record rejection outcomes.

A custom function, `perform_t_test()`, integrates the sampling, testing, reporting, and decision-making procedures into a reusable computational workflow.

## Key Learning Outcomes

Through this project, I gained practical experience in:

- Translating statistical theory into executable R code.
- Simulating random variables and normal populations.
- Implementing and interpreting hypothesis tests.
- Automating statistical procedures through functions and loops.
- Evaluating statistical outcomes across repeated simulations.
- Applying reproducibility practices in computational statistics.

## Methodological Consideration

Both simulated populations are assigned the same population mean of 20, despite having different standard deviations. Consequently, the simulation does not establish a true difference between the population means.

Therefore, the proportion of rejected null hypotheses should be interpreted as an empirical rejection rate under the specified equal-mean setup, rather than conventional statistical power under an alternative hypothesis with different population means. A separate simulation with unequal population means would be needed to estimate statistical power under a specified alternative hypothesis.

This distinction is important when interpreting simulation results and demonstrates the need to align statistical conclusions with the assumptions and parameters used in an experiment.

## Conclusion

This project demonstrates how R can be used to implement and automate statistical computing procedures, from normal distribution simulation to repeated hypothesis testing. By combining random sampling, a two-sample t-test, and repeated computational experiments, the project provides a practical application of statistical inference through programming.

The project also highlights the importance of reproducibility, appropriate hypothesis formulation, and careful interpretation of statistical results. These skills form a foundation for more advanced work in statistical simulation, data analysis, and statistical modeling.

## Tools and Technologies

- **Programming Language:** R
- **Statistical Methods:** Normal Distribution Simulation, Two-Sample t-Test, Hypothesis Testing
- **Computational Techniques:** Random Sampling, Repeated Simulation, Function Development, Looping, Conditional Statements
- **Evaluation:** Test Statistics, Critical Values, P-values, Empirical Rejection Rate

## Repository Contents

- `SYNTAX DISTRIBUSI NORMAL.R` — R source code for the statistical simulation and hypothesis-testing implementation.
- `PROYEK KOMPUTASI STATISTIKA A_WAHYU RAMADHAN_2203125019 (2).pdf` — Project report documenting the computational statistics assignment.

## Author

Wahyu Ramadhan

GitHub Repository: https://github.com/wahyurmd911/komputasi-statistika

# Statistical-Analysis

Analytical resolution and code modeling in R for the following statistical problem:
A random vector (X, Y) is given, where X represents the concentration of sulfur in an alloy (%), and Y represents the hardness of the alloy. An analyst proposes the following joint probability density function (Formula in PDF).

a) For the given random vector, find the regression function ϕ(x)=E(Y∣X=x).

b) Using a seed, simulate 150 realizations of the random vector and plot them on a scatter plot. Overlay the regression function found in (a) on the graph.

c) With the obtained realizations, approximate the regression line and include it in the scatter plot. What is observed?

d) Using the obtained realizations, approximate the regression function using the Nadaraya-Watson method with a rectangular kernel and two different window widths 
ℎ
h. Include the curves in the scatter plot. What is observed?

e) Approximate the marginal density function of Y with a method of your choice and plot it. (Optional: Is it easy to obtain the density analytically and overlay it on the graph? It is suggested to try using some calculation tool.)

The code and PDF are in spanish. I'll include an english translation for the explanation of the model:

b) The first step is to simulate 150 realizations of X, and then for each X, simulate 150 realizations of Y given X. We combine these values into a matrix to obtain pairs of points (x, y) for subsequent plotting on a scatter plot. Next, we add the analytically obtained regression function to the graph.

c) At this point, we include the approximate regression line in the graph. It can be observed that the line closely approximates the function as it minimizes the mean squared error, making it the best predictor between X and Y.

d) For simulating the regression function using the Nadaraya-Watson method, we rely on the analytical resolution method, which states that for each point x, the following equation can be formulated: (formula in PDF). Therefore, we proceed to create a function that takes all our x data and performs the necessary evaluation for the equation, i.e., 𝑦𝑖 | − 𝑥𝑖 | ≤ ℎ, for two different values of h. Once these values are obtained, we record what they are and how many they are, and finally, we take the average value of each corresponding y value for these x values. For the graph, we plot each average value in the form of a line, connecting points that are (𝑥𝑖, 𝑦̅(𝑥𝑖)). We then add the corresponding graphs for the regression lines obtained with h. Note that the curves were plotted 1 = 0.5, ℎ2 = 0.2 above the previous graph. The red curve corresponds to h, and the green one to ℎ2.

e) To approximate the marginal density function of Y, we create a histogram of the values of Y|X = x, and overlay it with a plot of the density of Y|X = x.

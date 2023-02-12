# ML-basics-theory

###### Technology:
```
- Matlab m-scripts.
```

###### Laboratories legend:
```
(1) Implementations of bacis algorithms and simulations.
(2) Basic usage of matrix operations (better performance).
(3) Optimization process on Restrigin function.
(4) Linear regression (LR) for the process of laminar cooling of a cylindrical sheet.
(5) Logistic regression (LogitR) for prediction of share of ferrite in steel after stepping down process.
(6) Same logistic regression with multiclass prediction.
(7) Same logistic regression with two-class prediction with two-class regularization.
(8) PCA for reduction of dynamic system simulation results' dimentions (5 to 2).
(9) Recommendation engine: completing movie ratings.
(10) Project: GD vs SGD vs Data sampling (on SPAM data)
```
<br>

### Lab 4-6

After hot rolling, sheets with different phase composition are subjected to a laminar cooling process. Sheet sweetening scheme after hot rolling:
![](https://github.com/KrzysiekJa/ML-basics-theory/blob/main/images/sheet_sweetening.png)

### Lab 4

Result:
![](https://github.com/KrzysiekJa/ML-basics-theory/blob/main/images/3Dplot_lin_reg.jpg)

### Lab 5

Creation of two models ( $\theta_1$ and $\theta_2$ ) capable of predicting whether the ferrite phase fraction is in the range 1: $F_f \in  [0.7; 0.85]$ and is within the range 2: $F_f \in [0.7; 0.8]$.

Results:
![](https://github.com/KrzysiekJa/ML-basics-theory/blob/main/images/plot_logistic_reg_1.jpg)

![](https://github.com/KrzysiekJa/ML-basics-theory/blob/main/images/plot_logistic_reg_2.jpg)

### Lab 6

**One vs. All**

Division into classes depending on the range to which the share of ferrite will belong after metal descent. The individual classes correspond to the following ranges:  
Class 1: $F_f \in [0.8; 1]$  
Class 2: $F_f \in [0.7; 0.8]$  
Class 3: $F_f \in [0.6; 0.7]$  
Class 4: $F_f \in [0.5; 0.6]$  
Class 5: $F_f \in [0.4; 0.5]$  
Class 6: $F_f \in [0.3; 0.4]$  
Class 7: $F_f \in [0.2; 0.3]$  
Class 8: $F_f \in [0.1; 0.2]$  
Class 9: $F_f \in [0; 0.1]$  

Result:
![](https://github.com/KrzysiekJa/ML-basics-theory/blob/main/images/plot_multiclass_logistic_reg.jpg)

Confusion matrix for classification:
![](https://github.com/KrzysiekJa/ML-basics-theory/blob/main/images/confusion_matrix_multiclass.png)

### Lab 7

**Regularization**

Creating a model that can predict the belonging of the vector *x* to one of the two classes. The training of the model takes into account the regularization.

Results:

* $\lambda = 1$:
![](https://github.com/KrzysiekJa/ML-basics-theory/blob/main/images/regulatization_lambda_1.jpg)

* $\lambda = 0.00001$: 
![](https://github.com/KrzysiekJa/ML-basics-theory/blob/main/images/regulatization_lambda_0_00001.jpg)

F-score/lambda:
![](https://github.com/KrzysiekJa/ML-basics-theory/blob/main/images/plot_regularization_lambda.jpg)

*hypotheses written during runtime*

### Lab 8

The results from the simulation of a dynamic system consisting of five bogies were used.

![](https://github.com/KrzysiekJa/ML-basics-theory/blob/main/images/scratch_pca.png)

![](https://github.com/KrzysiekJa/ML-basics-theory/blob/main/images/equation_pca.png)

Simulations were carried out for different values of the masses of individual bogies. The result of each simulation was the maximum deflection of the first trolley. There are 4 sets of results: $(X^1, Y^1)$, $(X^2, Y^2)$, $(X^3, Y^3)$, $(X^4, Y^4)$.  

Principal component analyzes were carried out for each of the data sets, the number of dimensions was reduced to 2.  

Sample results:
![](https://github.com/KrzysiekJa/ML-basics-theory/blob/main/images/plot_simulation_1_pca.jpg)

![](https://github.com/KrzysiekJa/ML-basics-theory/blob/main/images/plot_simulation_4_pca.jpg)

### Lab 9

**Collaborative filtering**

![](https://github.com/KrzysiekJa/ML-basics-theory/blob/main/images/table_cf.png)

The task was to complete the missing ratings and indicate to each user two products that had not yet been rated. The common filtration algorithm was used to fill in the missing assessments. The learning effect was a matrix $\Theta$ containing the preferences of individual users and a matrix *𝐗* containing the characteristics of individual products:

<p align="center"><img src="https://github.com/KrzysiekJa/ML-basics-theory/blob/main/images/vectors_theta_X_cf.png" width="450" height="160" /></p>

As a result, it allowed to complete the matrix *Y* with missing ratings.

## $$Y = h_{\Theta}(X) = \Theta^T X$$

### Project 1

**Gradient Descent (GD) vs Stochastic Gradient Descent (SGD) vs GD with Sampling**

The project was prepared using **SPAM E-mail Database** data from 1998. The main purpose of the study was to compare the methods Gradient Descent (GD), Stochastic Gradient Descent and GD with Sampling, comparing their time efficiency.

Basic plots showing their performance has been showed below:

* final minimum value found:
![](https://github.com/KrzysiekJa/ML-basics-theory/blob/main/images/plot_GDvsSGDvsSampling_on_spam_searching.png)

* the minimum value found depending on the number of iterations:
![](https://github.com/KrzysiekJa/ML-basics-theory/blob/main/images/plot_GDvsSGDvsSampling_on_spam_perf.png)

* execution time for the number of executions (7):
![](https://github.com/KrzysiekJa/ML-basics-theory/blob/main/images/box_plot_GDvsSGDvsSampling_on_spam.png)


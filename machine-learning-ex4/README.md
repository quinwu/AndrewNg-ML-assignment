---
title: 小记 Neural Networks
date: 2017-5-3 20:55:50
categories: 技术向
tags:
  - Machine Learning
  - 小记系列
---
 

神经网络（neual networks）是由具有适应性的简单单元组成的广泛并行互联的网络，它的组织能够模拟生物神经系统对真实的世界物体作出的交互反应。我们在机器学习中谈论神经网络指的是『神经网络学习』

感知机（Perceptron）是由两层神经元组成。
$$ y_j = f(\sum_i w_ix_i - \theta_j)$$

####logistic regression cost function
$$J(\theta) = -\frac{1}{m} \sum_{i=1}^m y^{(i)}\log(h_\theta(x^{(i)}) ) +(1-y^{(i)})\log(1-h_\theta(x^{(i)})) $$

####neual network
$$J(\Theta) = -\frac{1}{m}[\sum_{i=1}^m\sum_{k=1}^Ky_k^{(i)} \log(h_\Theta(x^{(i)}))_k + (1- y_k^{(i)})\log(1-(h_\Theta(x^{(i)}))_k) ] $$

#### logistic regression cost function regularization
$$J(\theta) = -\frac{1}{m} \sum_{i=1}^m y^{(i)}\log(h_\theta(x^{(i)}) ) +(1-y^{(i)})\log(1-h_\theta(x^{(i)})) + \frac{\lambda}{2m} \sum_{j=1}^n \theta_j^2$$

####neual network regularization
$$J(\Theta) = -\frac{1}{m}[\sum_{i=1}^m\sum_{k=1}^Ky_k^{(i)} \log(h_\Theta(x^{(i)}))_k + (1- y_k^{(i)})\log(1-(h_\Theta(x^{(i)}))_k)] + \frac{\lambda}{2m} \sum_{l=1}^{L-1}\sum_{i=1}^{s_l}\sum_{j=1}^{s_{l+1}}(\Theta_{ji}^{(l)})^2 $$

###Backpropagation 
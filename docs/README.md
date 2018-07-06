# Unity 4.0 docs

## Flex

## Using flex with unity 4.0 classes

<iframe width="100%" height="600" src="//jsfiddle.net/FabioP/axbsrdc3/embedded/html,css,result/" allowfullscreen="allowfullscreen" allowpaymentrequest frameborder="0"></iframe>


## Forms

### Form item structure

<iframe width="100%" height="350" src="//jsfiddle.net/FabioP/w1gsv485/embedded/html,css,result/" allowfullscreen="allowfullscreen" allowpaymentrequest frameborder="0"></iframe>

### Wrap form elements

<iframe width="100%" height="200" src="//jsfiddle.net/FabioP/z32bhta5/embedded/html,css,result/" allowfullscreen="allowfullscreen" allowpaymentrequest frameborder="0"></iframe>

### Input Icons (single icon & double icons)

<iframe width="100%" height="250" src="//jsfiddle.net/FabioP/gjy7f1ve/embedded/html,css,result/" allowfullscreen="allowfullscreen" allowpaymentrequest frameborder="0"></iframe>

## Utility Classes

### Round / Square Elements and Dropdown Button

These should be used wherever we have a rounded or square element for consistency across the site.

> To build up the class, use ```.rnd-``` or ```.sqr-``` followed by the size:

* tiny
* small
* medium
* large
* xlarge
* xxlarge

> Round / square element example 

```html

<!-- Rounded element -->

<a class="rnd-small"></a>

<!-- Square element -->

<a class="sqr-small"></a>

```

> Round / square element example with icon

```html

<!-- Rounded with icon -->

<a class="rnd-small">

    <i class="icon-bell-alt"></i>

</a>

<!-- Square with icon -->

<a class="sqr-small">

    <i class="icon-bell-alt"></i>

</a>

```
> Dropdown button

```html
<a class="listLayout sqr-small dropdown"></a>
```

> Round & square element size as well as dropdown button

<iframe width="100%" height="600" src="//jsfiddle.net/FabioP/zpsLatkx/embedded/html,css,result/" allowfullscreen="allowfullscreen" allowpaymentrequest frameborder="0"></iframe>

### Padding / Margin

#### Class names

* .pa / .ma for padding or margin, then add a position
* l - left
* r - right
* t - top
* b - bottom
* lr - left / right
* tb - top / bottom
* all - all

#### Unit

* qtr - quarter
* half - half
* 1 - 1 rem
* 2 - 2 rem
* 3 - 3 rem
* 4 - 4 rem

> All the classes above are measured in rem.

```html
<div class="pa-l-qtr"> <!-- Gives 0.25 rem on left side -->

<div class="ma-all-1"> <!-- Gives a 1 rem margin all around -->
```

## Admin List template

> A basic default admin list template ready to use

<iframe width="100%" height="600" src="//jsfiddle.net/FabioP/fh5aL3yc/embedded/html,css,result/" allowfullscreen="allowfullscreen" allowpaymentrequest frameborder="0"></iframe>

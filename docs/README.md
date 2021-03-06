# Unity 4.0 docs

## Flex

## Using flex with unity 4.0 classes

<iframe width="100%" height="600" src="//jsfiddle.net/FabioP/axbsrdc3/embedded/html,result/" allowfullscreen="allowfullscreen" allowpaymentrequest frameborder="0"></iframe>


## Forms

### Form item structure

<iframe width="100%" height="350" src="//jsfiddle.net/FabioP/w1gsv485/embedded/html,result/" allowfullscreen="allowfullscreen" allowpaymentrequest frameborder="0"></iframe>

### Wrap form elements

<iframe width="100%" height="200" src="//jsfiddle.net/FabioP/z32bhta5/embedded/html,result/" allowfullscreen="allowfullscreen" allowpaymentrequest frameborder="0"></iframe>

### Input Icons (single icon & double icons)

<iframe width="100%" height="250" src="//jsfiddle.net/FabioP/gjy7f1ve/embedded/html,result/" allowfullscreen="allowfullscreen" allowpaymentrequest frameborder="0"></iframe>

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

!> **Round / Square** are not limited to the "a" tag, you can use anything: div, p, span etc..

> Round / square element example 

```html
<a class="rnd-small"></a>
```

> Square element example 

```html
<a class="sqr-small"></a>
```

> Round element example with icon

```html
<a class="rnd-small">

    <i class="icon-bell-alt"></i>

</a>
```

> Square element example with icon

```html
<a class="sqr-small">

    <i class="icon-bell-alt"></i>

</a>
```
> Dropdown button

```html
<a class="listLayout sqr-small dropdown"></a>
```

> Round & square element size as well as dropdown button

<iframe width="100%" height="600" src="//jsfiddle.net/FabioP/zpsLatkx/embedded/html,result/" allowfullscreen="allowfullscreen" allowpaymentrequest frameborder="0"></iframe>

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

* All the classes above are measured in rem.

> Gives 0.25 rem on left side

```html
<div class="pa-l-qtr"> 
```
> Gives a 1 rem margin all around

```html
<div class="ma-all-1"> 
```

## Fixed Modal Header

> Default header snippet for most modal window

```html
<div class="fixed-modal-header">

    <h5 class="modal-title">

        <span class="heading title">Title here</span>

    </h5>

    <div class="formButtons">

      <button class="small" type="button">Button 1</button>

      <button class="small" type="button">Button 2</button>

      <a class="close-withPopup close-reveal-modal"></a>

    </div>

</div>
```

## Empty list centering with text & icon

> Replace the class in the ```<i></i>``` element to match the one you need.

```html
<div class="flex flex-auto justify-center items-center">
        <div class="flex flex-column">
        <span class="empty-list-icon cv-g-text ma-b-1">
            <i class="insert-your-icon-class-here"></i>
        </span>
        <span class="empty-list-text cv-g-text ma-b-half">Insert main text here</span>
        <span class="empty-list-text cv-g-text">Insert secondary text here</span>
    </div>
    </div>
```

## Admin List template

> A basic default admin list template ready to use

<iframe width="100%" height="600" src="//jsfiddle.net/FabioP/fh5aL3yc/embedded/html,result/" allowfullscreen="allowfullscreen" allowpaymentrequest frameborder="0"></iframe>

## Color Overrides

> A quick guide to writing the color/skin files in as sane a way as possible

### General Rules
------------

1.	For single items, always use the generic classes where possible in the html.  If you are writing a class that is single use, maybe a single button, look to see if there is a class already written to do the same thing and use that.  

⋅⋅⋅ keep in mind that the generic classes often have extended functionality, like transistions, if statements for alternative variables.

2.	Use the functions and mixins wherever possible.  This increases consistency and reduces possible bugs, while making the skinning process more robust.

3.	Nesting - Always try to keep nesting and class chaining to a minimum.  No styles should be nested more than three deep, but in general try and keep to single classes, or single classes with base elements nested. (i.e. `.cs-list-menu li` ).

4. Never attach anything to an ID

5. Don't add anything to the color overrides that is not a color

### Mixins/Functions
--------------------
There are some good functions and mixins to make life easier

**Function: color-contrast**
```scss
color-contrast($color,$dark,$light)
``` 
Creates a contrasting color to the given $color variable. defaults to ```black($dark)/white($light)```. Defaults can be altered when you call the function.  This function returns a single color value.

<hr />

**mixin: background-contrast**
```scss
@include background-contrast($color,$dark,$light)
``` 
Sets the text color to a contrast of the ```background($color)```.  Defaults to ```$cv-g2($dark) / $cv-g-4($light)```.

**Note:** - Never do the following as it renders the mixin useless
```scss
	.foo{
		@include background-contrast($color,$dark,$light)
		color:$color-var;
	}
``` 

<hr />


**mixin: background-contrast-hover**
```scss
@include background-contrast-hover($color,$dark,$light)
``` 
As above, but adds a hover effect.  Also adds in a generic transition.  Always use this for hovers unless there is a very specific use-case as it helps keep consistency.

<hr />


**mixin: text-hover**
```scss
@include text-hover($color,$dark,$light)
``` 
Adds a hover and transition to text.  - there are generic classes for this, if you add a ```$cv-color``` variable to an `a` element (i.e. `a class="cv-g"` )



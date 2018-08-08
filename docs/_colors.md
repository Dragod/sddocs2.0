# Skins 

## Colours 

> All colors classes starts with ```.cv-```

You then add which color you want to use:

* p - primary
* g - grey
* s - secondary
* button - button color (set to primary as default)
* alert
* success
* fail
* t - tertiary
* w - white

There are then a series of modifiers you can add to tint or shade:

* 1, 2 - darken the color
* -1, -2, -3 - lighten the color

You can then add what you are targeting:

* -text
* -bg
* -border
* -grad

So a fully built up class would be something like:

``` html
<div class="cv-g-3-bg"></div>  <!--A very light grey background -->
```
The bg classes already have a color contrast function built into them so they should give a text color that is easily visible on that background.

Two other variables are available to affect how the skin looks:

* $grey-mix:
> this affects the amount of the primary colour which is mixed in to create the grey variables… it’s set around 95% (5% of primary) as default,  so decrease that percentage for a greater mix of the primary, decrease for the opposite.

* $color-adjust-ratio:
> this controls the difference between the lighter/darker versions of the colours…. Set to 40% as default, increase for a greater shift between colors, decrease for the opposite.


## Fonts

There is a mixin for importing fonts in the _fonts.scss_ file.  You can call this in the config file _after_ the fonts file is imported

To use it, first you need to build up an array of the different fonts that are to be included in the font family.  the array elements are made up of the font suffix (i.e. light, bold), the font-weight that this corrensponds to (100, 300 etc), and whether the font is normal or italic.

example:

```
$custom-font: (
	(extra-light,200,normal),
	(bold-italic,600,italic)
	);
```

Once you have the array, call the mixin

```
@each $custom in $custom-font {
    @font-face {
        @include font-embed(custom, nth($custom,1),'../font/custom', nth($custom, 2), nth($custom, 3));        
    }
}
```
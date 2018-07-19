### Building Css skin

> We are using grunt for the build process so make sure you already have it installed as well as the grunt-cli tool.

* Build everything, core, skin, admin, login and post css. Best suited for distribution

```js
grunt --skin=skin-name
```

> Commands to use under development, to speed up build time

* Building core & skin:

```js
grunt sd --skin=skin-name
```

* Building core & skin + keep watching:

```js
grunt sd-watch --skin=skin-name
```

* Building login screen only:

```js
grunt login
```

* Building admin screen only:

```js
grunt admin
```

* Building only color:

```js
grunt sd-color --skin=skin-name
```

* Building only core

```js
grunt sd-core
```

* List of grunt task

```js
grunt availabletasks
```



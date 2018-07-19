### Building Css skin

> We are using grunt for the build process so make sure you already have it installed as well as the grunt-cli tool.

* Build everything, core, skin, admin, login and post css. Best suited for distribution

```bash
grunt --skin=skin-name
```

> Commands to use under development, to speed up build time

* Building core & skin:

```bash
grunt sd --skin=skin-name
```

* Building core & skin + keep watching:

```bash
grunt sd-watch --skin=skin-name
```

* Building login screen only:

```bash
grunt login
```

* Building admin screen only:

```bash
grunt admin
```

* Building only color:

```bash
grunt sd-color --skin=skin-name
```

* Building only core

```bash
grunt sd-core
```

* List of grunt task

```bash
grunt availabletasks
```



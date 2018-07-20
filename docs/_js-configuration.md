### List of Unity javascript configuration

> This is not a complete list by any mean. Please check Configuration.js in js/sd folder

The ID of the homescreen layout, corresponding dashboard items in DB also required!
Rolex unity: the default is 1, use 3 for an alt layout

```js
sd.Configuration.dashLayoutID = 6;
```

Whether to use the favourites feature
Currently just used in workboxes

```js
sd.Configuration.enableFavourites = true;
```
 Limit for the number of dashboard widget results returned

```js
sd.Configuration.widgetResultLimit = 5;
```

Duration for archiving workboxes (in days)
If not required set static autoArchiveDuration = 0

```js
sd.Configuration.autoArchiveDuration = 0;
```

Whether or not to show the admin access level dropdown in the user manager admin settings

```js
sd.Configuration.userManagerShowAccessLevel = true;
```

Pattern for creating user password, currently just any alpha-numeric

```js
sd.Configuration.userPasswordPattern = /[a-zA-Z0-9]+/;
```

Limit for the number of search results returned

```js
sd.Configuration.searchResultLimit = 50;
```

Search type to use when searching the phrase

```js
sd.Configuration.defaultSearchType = "exact";
```

Show checkbox by project comments

```js
sd.Configuration.emailNotification = true;
```

Auto select checkbox by project comments

```js
sd.Configuration.emailNotificationAutoTick = false;
```

Number of data columns to display in project list when a in a visual view

```js
sd.Configuration.projectListDataColumns = 3;
```

Label for the show projects buttton, this is configurable for clients that don't call them projects

```js
sd.Configuration.projectShowProjectsLabel = "Show Projects";
```

Compression level to alert user

```js
sd.Configuration.minCompressionLevel = 1; //level at which to show alert
sd.Configuration.minCompressionLevelLimit = 24; //Limit at which to show safe message
```

Top right help icon for help

```js
sd.Configuration.showHelpIcon = false;; 
```

Include the site sections in the search options

```js
sd.Configuration.includeSectionSearch = true;
```

Include filetypes in the search options

```js
sd.Configuration.includeFileTypeSearch = false;
```

Include the option to search file title only and/or content in the search options

```js
sd.Configuration.includeTitleSearch = true;
sd.Configuration.includeContentSearch = false;
```

Contains default search options for the top search

```js
sd.Configuration.defaultSearchOptions = {};
```
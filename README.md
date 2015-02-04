# Bootstrap Material Design with Less
## Bootstrap Material Design Packaged for Meteor, using Less

## Install

Not using atmosphere for it is easier to link in the import.less files as a package.  So git clone into your packages directory and then do a meteor add

```
    meteor add pfafman:bootstrap-material-design
```

Pull the less import files into your main.less file.

```
@import "packages/pfafman:bootstrap-material-design/lib/less/material-wfont.import.less";
@import "packages/pfafman:bootstrap-material-design/lib/less/ripples.import.less";
```
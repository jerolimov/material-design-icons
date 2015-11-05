## About this fork

This fork of the official Google [material-design-icons](https://github.com/google/material-design-icons)
project just renames the iOS imagesets of all black icons.

**So that the resource names matches between Android and iOS!**

It keeps the resource name scheme for Android:

* [google/material-design-icons/.../action/drawable-mdpi](https://github.com/google/material-design-icons/tree/master/action/drawable-mdpi)
* [jerolimov/material-design-icons/.../action/drawable-mdpi](https://github.com/jerolimov/material-design-icons/tree/master/action/drawable-mdpi)

But it changes the resource names for iOS: All icons without color suffix
(which are suffixed with `_black` on Android) was renamed from
`ic_abc_xyz.imageset` to `ic_abc_xyz_black.imageset`:

* [google/material-design-icons/.../action/ios](https://github.com/google/material-design-icons/tree/master/action/ios)
* [jerolimov/material-design-icons/.../action/ios](https://github.com/jerolimov/material-design-icons/tree/master/action/ios)

See [rename_files.sh](https://github.com/jerolimov/material-design-icons/blob/master/rename_files.sh) for more details.

# About Material design icons

Material design icons are the official [icon set](http://www.google.com/design/spec/style/icons.html#icons-system-icons) from Google that are designed under the [material design guidelines](http://www.google.com/design/spec).

## License

We have made these icons available for you to incorporate them into your products under the [Creative Common Attribution 4.0 International License (CC-BY 4.0)](http://creativecommons.org/licenses/by/4.0/). Feel free to remix and re-share these icons and documentation in your
products.  We'd love attribution in your app's *about* screen, but it's not required. The only thing we ask is that you not re-sell
the icons themselves.

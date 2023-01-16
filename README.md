# spm-dynamic-bundles
Sample project to demonstrate issue with a dynamic library's bundle in SPM

## Steps to reproduce issue:
- Double click on `ClientLibrary/Package.swift` to open the project with Xcode
- Select `Product` > `Test (cmd-U)`

## Expected result:
Test passes

## Actual result:
Test crashes with the following error:
```
BaseLibrary/resource_bundle_accessor.swift:40: Fatal error: unable to find bundle named BaseLibrary_BaseLibrary
```

### Notes
The sample works with any of the following changes:
- running `swift test` from the command line
- changing `BaseLibrary`'s type to `.static` (or omitting the type altogether) in `BaseLibrary/Package.swift:11`

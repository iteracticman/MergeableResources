It's not possible to merge a framework with resource into an iOS app target because the resources can not be found in debug builds.

Steps to reproduce:
- Create an Xcode Project with iOS App Template
- Add a Framework Target (make sure to "Embed in Application")
- Add an Asset Catalog to Framework Target
- Add an Color Resource (or Image Set, or any other Resource)
- Reference the Resource in App Target (I have used a SwiftUI View)

- Run on Device (!) to make sure everything works as expected

- Change "Create Merged Binary (MERGED_BINARY_TYPE)" build setting of app target to "Automatic (automatic)"

- Run again (on Device and with Debug configuration!) and observe how the resources framework resource cannot be found anymore (using SwiftUI you will see a "No image/color named '...' in asset catalog for ..." error message in console logs) 

Note:
- Everything works fine in Simulator
- Release configuration works fine
- Same behavior for manual and automatic merging
- Same behavior for resources which are not bundled in Asset Catalog
- When archiving the app in debug configuration, an `Assets.car` file is present in `ReexportedBinaries/FrameworkWithResources.framework/` but `Bundle(for: SomeClassInFrameworkWithResources.self)` returns `Frameworks/FrameworkWithResources.framework/`, which does not contain `Assets.car` file. 

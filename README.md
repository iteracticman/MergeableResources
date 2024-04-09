It's not possible to merge a framework with resource into an iOS app target because the resource are not included in the app bundle.

Steps to reproduce:
- Create an Xcode Project with iOS App Template
- Add a Framework Target (make sure to "Embed in Application")
- Add an Asset Catalog to Framework Target
- Add an Color Resource (or Image Set, or any other Resource)
- Reference the Resource in App Target (I have used a SwiftUI View)

- Run on Device (!) to make sure everything works as expected

- Change "Create Merged Binary (MERGED_BINARY_TYPE)" build setting of app target to "Automatic (automatic)"
- Change app target settings to link, but not embed framework target (e.g. change from "Embed and Sign" to "Do Not Embed" in "Frameworks, Libraries and Embedded Content" section in "General" tab)

- Run again (on Device!) and observe how the resources framework resource cannot be found anymore (using SwiftUI you will see a "No image/color named '...' in asset catalog for ..." error message in console logs) 

Note:
- Everything works fine in Simulator
- Same behavior for Release and Debug configuration
- Same behavior for manual and automatic merging
- Same behavior for resources which are not bundled in Asset Catalog
- When archiving the app, an "Assets.car" file is never present (even when creating archiving for Simulator target, when "Allow archiving for Simulator" is enabled)

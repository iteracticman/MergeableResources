import Foundation
import SwiftUI

public enum FrameworkResources {
    public static let image = ImageResource.imageAsset
    public static let color = Color.colorAsset
    public static let uiImage = UIImage(named: "ImageAsset", in: frameworkBundle, with: nil)
}

public let frameworkBundle = Bundle(for: SomeClass.self)

private class SomeClass {}

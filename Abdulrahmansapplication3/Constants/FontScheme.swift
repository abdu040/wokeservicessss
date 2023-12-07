import Foundation
import SwiftUI

class FontScheme: NSObject {
    static func kPoppinsSemiBold(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kPoppinsSemiBold, size: size)
    }

    static func kPoppinsRegular(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kPoppinsRegular, size: size)
    }

    static func kPoppinsMedium(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kPoppinsMedium, size: size)
    }

    static func kPoppinsLight(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kPoppinsLight, size: size)
    }

    static func kPoppinsExtraLight(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kPoppinsExtraLight, size: size)
    }

    static func fontFromConstant(fontName: String, size: CGFloat) -> Font {
        var result = Font.system(size: size)

        switch fontName {
        case "kPoppinsSemiBold":
            result = self.kPoppinsSemiBold(size: size)
        case "kPoppinsRegular":
            result = self.kPoppinsRegular(size: size)
        case "kPoppinsMedium":
            result = self.kPoppinsMedium(size: size)
        case "kPoppinsLight":
            result = self.kPoppinsLight(size: size)
        case "kPoppinsExtraLight":
            result = self.kPoppinsExtraLight(size: size)
        default:
            result = self.kPoppinsSemiBold(size: size)
        }
        return result
    }

    enum FontConstant {
        /**
         * Please Add this fonts Manually
         */
        static let kPoppinsSemiBold: String = "Poppins-SemiBold"
        /**
         * Please Add this fonts Manually
         */
        static let kPoppinsRegular: String = "Poppins-Regular"
        /**
         * Please Add this fonts Manually
         */
        static let kPoppinsMedium: String = "Poppins-Medium"
        /**
         * Please Add this fonts Manually
         */
        static let kPoppinsLight: String = "Poppins-Light"
        /**
         * Please Add this fonts Manually
         */
        static let kPoppinsExtraLight: String = "Poppins-ExtraLight"
    }
}

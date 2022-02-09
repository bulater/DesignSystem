//
//  Model.swift
//  DesignSystem
//
//  Created by Булат Сагдиев on 09.02.2022.
//

import UIKit

enum Font: String {
    case regular = "Helvetica Neue"
    case bold = "Helvetica Neue Bold"
    case light = "Helvetica Neue Light"
    case medium = "Helvetica Neue Medium"
    case thin = "Helvetica Neue Thin"
    
    var name: String {
        return self.rawValue
    }
}

struct FontDescription {
    let font: Font
    let size: CGFloat
    let style: UIFont.TextStyle
}

enum TextStyle {
    case display1  //52pt, Bold
    case display2  //20pt, Bold
    case title     //18pt, Medium
    case titleThin //14pt, thin
    case regular   //14pt, light
}

extension TextStyle {
    private var fontDescription: FontDescription {
        switch self {
        case .display1:
            return FontDescription(font: .bold, size: 52, style: .largeTitle)
        case .display2:
            return FontDescription(font: .bold, size: 28, style: .title1)
        case .title:
            return FontDescription(font: .medium, size: 18, style: .body)
        case .titleThin:
            return FontDescription(font: .thin, size: 14, style: .caption1)
        case .regular:
            return FontDescription(font: .light, size: 14, style: .callout)
        }
    }
}

extension TextStyle {
    var font: UIFont {
        guard let font = UIFont(name: fontDescription.font.name, size: fontDescription.size) else {
            return UIFont.preferredFont(forTextStyle: fontDescription.style)
        }

        let fontMetrics = UIFontMetrics(forTextStyle: fontDescription.style)
        return fontMetrics.scaledFont(for: font)
    }
}


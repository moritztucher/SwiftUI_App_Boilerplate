//
//  Color+Extension.swift
//  HabitFinch
//
//  Created by Moritz Tucher on 31.07.24.
//

import Foundation
import SwiftUI

extension Color {
    // Initialize a Color from a hex string
    init(hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        
        let a, r, g, b: UInt64
        switch hex.count {
        case 3: // RGB (12-bit)
            (a, r, g, b) = (255, (int >> 8 * 4) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6: // RGB (24-bit)
            (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8: // ARGB (32-bit)
            (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (a, r, g, b) = (255, 0, 0, 0)
        }
        
        self.init(
            .sRGB,
            red: Double(r) / 255,
            green: Double(g) / 255,
            blue: Double(b) / 255,
            opacity: Double(a) / 255
        )
    }
    
    // Convert a Color to a hex string
    func toHexString() -> String? {
        let components = UIColor(self).cgColor.components
        
        let r: CGFloat = components?[0] ?? 0.0
        let g: CGFloat = components?[1] ?? 0.0
        let b: CGFloat = (components?.count ?? 0) > 2 ? components?[2] ?? 0.0 : 0.0
        let a: CGFloat = components?.last ?? 1.0
        
        if a == 1.0 {
            return String(format: "#%02lX%02lX%02lX", lround(Double(r * 255)), lround(Double(g * 255)), lround(Double(b * 255)))
        } else {
            return String(format: "#%02lX%02lX%02lX%02lX", lround(Double(a * 255)), lround(Double(r * 255)), lround(Double(g * 255)), lround(Double(b * 255)))
        }
    }
}

extension ShapeStyle where Self == Color {    
    static var cayenne: Color {
        Color(#colorLiteral(red: 0.5807225108, green: 0.066734083, blue: 0, alpha: 1))
    }
    static var maraschino: Color {
        Color(#colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 1))
    }
    static var salmon: Color {
        Color(#colorLiteral(red: 1, green: 0.4932718873, blue: 0.4739984274, alpha: 1))
    }
    
    static var mocha: Color {
        Color(#colorLiteral(red: 0.5787474513, green: 0.3215198815, blue: 0, alpha: 1))
    }
    
    static var tangerine: Color {
        Color(#colorLiteral(red: 1, green: 0.5781051517, blue: 0, alpha: 1))
    }
    
    static var cantaloupe: Color {
        Color(#colorLiteral(red: 1, green: 0.8323456645, blue: 0.4732058644, alpha: 1))
    }
    
    static var asparagus: Color {
        Color(#colorLiteral(red: 0.5738074183, green: 0.5655357838, blue: 0, alpha: 1))
    }
    
    static var lemon: Color {
        Color(#colorLiteral(red: 0.9994240403, green: 0.9855536819, blue: 0, alpha: 1))
    }
    
    static var banana: Color {
        Color(#colorLiteral(red: 0.9995340705, green: 0.988355577, blue: 0.4726552367, alpha: 1))
    }
    
    static var fern: Color {
        Color(#colorLiteral(red: 0.3084011078, green: 0.5618229508, blue: 0, alpha: 1))
    }
    
    static var lime: Color {
        Color(#colorLiteral(red: 0.5563425422, green: 0.9793455005, blue: 0, alpha: 1))
    }
    
    static var honeydew: Color {
        Color(#colorLiteral(red: 0.8321695924, green: 0.985483706, blue: 0.4733308554, alpha: 1))
    }
    
    static var clover: Color {
        Color(#colorLiteral(red: 0, green: 0.5603182912, blue: 0, alpha: 1))
    }
    
    static var spring: Color {
        Color(#colorLiteral(red: 0, green: 0.9768045545, blue: 0, alpha: 1))
    }
    
    static var flora: Color {
        Color(#colorLiteral(red: 0.4500938654, green: 0.9813225865, blue: 0.4743030667, alpha: 1))
    }
    
    static var moss: Color {
        Color(#colorLiteral(red: 0, green: 0.5628422499, blue: 0.3188166618, alpha: 1))
    }
    
    static var seafoam: Color {
        Color(#colorLiteral(red: 0, green: 0.9810667634, blue: 0.5736914277, alpha: 1))
    }
    
    static var spindrift: Color {
        Color(#colorLiteral(red: 0.4508578777, green: 0.9882974029, blue: 0.8376303315, alpha: 1))
    }
    
    static var teal: Color {
        Color(#colorLiteral(red: 0, green: 0.5690457821, blue: 0.5746168494, alpha: 1))
    }
    
    static var turquoise: Color {
        Color(#colorLiteral(red: 0, green: 0.9914394021, blue: 1, alpha: 1))
    }
    
    static var ice: Color {
        Color(#colorLiteral(red: 0.4513868093, green: 0.9930960536, blue: 1, alpha: 1))
    }
    
    static var ocean: Color {
        Color(#colorLiteral(red: 0, green: 0.3285208941, blue: 0.5748849511, alpha: 1))
    }
    
    static var aqua: Color {
        Color(#colorLiteral(red: 0, green: 0.5898008943, blue: 1, alpha: 1))
    }
    
    static var sky: Color {
        Color(#colorLiteral(red: 0.4620226622, green: 0.8382837176, blue: 1, alpha: 1))
    }
    
    static var midnight: Color {
        Color(#colorLiteral(red: 0.004859850742, green: 0.09608627111, blue: 0.5749928951, alpha: 1))
    }
    
    static var blueberry: Color {
        Color(#colorLiteral(red: 0.01680417731, green: 0.1983509958, blue: 1, alpha: 1))
    }
    
    static var orchid: Color {
        Color(#colorLiteral(red: 0.476841867, green: 0.5048075914, blue: 1, alpha: 1))
    }
    
    static var eggplant: Color {
        Color(#colorLiteral(red: 0.3236978054, green: 0.1063579395, blue: 0.574860394, alpha: 1))
    }
    
    static var grape: Color {
        Color(#colorLiteral(red: 0.5818830132, green: 0.2156915367, blue: 1, alpha: 1))
    }
    
    static var lavender: Color {
        Color(#colorLiteral(red: 0.8446564078, green: 0.5145705342, blue: 1, alpha: 1))
    }
    
    static var plum: Color {
        Color(#colorLiteral(red: 0.5810584426, green: 0.1285524964, blue: 0.5745313764, alpha: 1))
    }
    
    static var magenta: Color {
        Color(#colorLiteral(red: 1, green: 0.2527923882, blue: 1, alpha: 1))
    }
    
    static var bubblegum: Color {
        Color(#colorLiteral(red: 1, green: 0.5212053061, blue: 1, alpha: 1))
    }
    
    static var maroon: Color {
        Color(#colorLiteral(red: 0.5808190107, green: 0.0884276256, blue: 0.3186392188, alpha: 1))
    }
    
    static var strawberry: Color {
        Color(#colorLiteral(red: 1, green: 0.1857388616, blue: 0.5733950138, alpha: 1))
    }
    
    static var carnation: Color {
        Color(#colorLiteral(red: 1, green: 0.5409764051, blue: 0.8473142982, alpha: 1))
    }
}

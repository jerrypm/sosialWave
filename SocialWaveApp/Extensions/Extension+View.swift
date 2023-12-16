//
//  Extension+View.swift
//  SocialWaveApp
//
//  Created by Jerry Purnama Maulid on 25/11/23.
//

import SwiftUI

extension View {
    // MARK: Border

    func border(width: CGFloat, edges: [Edge], color: SwiftUI.Color) -> some View {
        overlay(EdgeBorder(width: width, edges: edges).foregroundColor(color))
    }

    // MARK: For bottom Sheet

    func halfSheet<SheetView: View>(showSheet: Binding<Bool>, @ViewBuilder sheeView: @escaping () -> SheetView) -> some View {
        return background {
            HalfSheetHelper(sheetView: sheeView(), showSheet: showSheet)
        }
    }
}

// MARK: Item Border

struct EdgeBorder: Shape {
    var width: CGFloat
    var edges: [Edge]

    func path(in rect: CGRect) -> Path {
        var path = Path()
        for edge in edges {
            var x: CGFloat {
                switch edge {
                case .top, .bottom, .leading: return rect.minX
                case .trailing: return rect.maxX - width
                }
            }

            var y: CGFloat {
                switch edge {
                case .top, .leading, .trailing: return rect.minY
                case .bottom: return rect.maxY - width
                }
            }

            var w: CGFloat {
                switch edge {
                case .top, .bottom: return rect.width
                case .leading, .trailing: return width
                }
            }

            var h: CGFloat {
                switch edge {
                case .top, .bottom: return self.width
                case .leading, .trailing: return rect.height
                }
            }
            path.addPath(Path(CGRect(x: x, y: y, width: w, height: h)))
        }
        return path
    }
}

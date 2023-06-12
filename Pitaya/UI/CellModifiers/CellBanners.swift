//
//  CellBanners.swift
//  Pitaya
//
//  Created by samara on 6/10/23.
//

import SwiftUI

extension View {
    func overlayView(title: String, desc: String, imageName: String, color: Color, alignment: Alignment = .center) -> some View {
        let overlay: some View =
            HStack {
                HStack {
                    Spacer()
                    VStack {
                        Image(systemName: imageName)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 70, height: 90)
                            .foregroundColor(color)
                        
                        Text(title)
                            .font(.bold(.title2)())
                            .padding(.bottom, 7)
                            .foregroundColor(color)
                        
                        Text(desc)
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                    }
                    Spacer()
                }
                .frame(height: 200)
            }
        
        return self.overlay(overlay, alignment: alignment)
    }
}

struct Stretchy: ViewModifier {
    var isTop = true

    func heightFor(_ reader: GeometryProxy) -> CGFloat {
        let height = reader.size.height
        let frame = reader.frame(in: .global)
        let deltaY = isTop ? frame.minY : (UIScreen.main.bounds.size.height - frame.maxY)
        return height + max(0, deltaY)
    }

    func offsetFor(_ reader: GeometryProxy) -> CGFloat {
        guard isTop else { return 0 }
        let frame = reader.frame(in: .global)
        let deltaY = frame.minY
        let offset = min(0, -deltaY)
        
        // Keep the stretched image at the top when scrolling upwards
        if offset > 1 {
            return -deltaY
        }
        
        return offset
    }

    func body(content: Content) -> some View {
        GeometryReader { reader in
            Color.clear
                .overlay(content.aspectRatio(contentMode: .fill), alignment: .center)
                .clipped()
                .frame(height: heightFor(reader) + 40)
                .offset(y: offsetFor(reader) - 40)
        }
    }
}

extension View {
    func stretchy(isTop: Bool = true) -> some View {
        self.modifier(Stretchy(isTop: isTop))
    }
}

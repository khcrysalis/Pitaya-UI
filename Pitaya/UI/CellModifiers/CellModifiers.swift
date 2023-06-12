//
//  CellModifiers.swift
//  Pitaya
//
//  Created by samara on 6/9/23.
//

import Foundation
import SwiftUI

func sfGradient(systemName: String, gradientColors: [Color]) -> some View {
    Image(systemName: systemName)
        .resizable()
        .aspectRatio(contentMode: .fit)
        .frame(width: 24, height: 24)
        .overlay(
            LinearGradient(
                gradient: Gradient(colors: gradientColors),
                startPoint: .trailing,
                endPoint: .leading
            )
        )
        .mask(
            Image(systemName: systemName)
                .resizable()
                .aspectRatio(contentMode: .fit)
        )
}

func CellText(text: String) -> some View {
    Text(text)
        .foregroundColor(Color(UIColor.label))
}

struct CustomSectionHeader: View {
    var title: String
    
    var body: some View {
        Text(title)
            .font(.bold(.headline)())
            .foregroundColor(Color(UIColor.label))
            .textCase(.none)
            .padding(.bottom, 5)
    }
}

// from https://filipmolcik.com/navigationview-dynamic-background-color-in-swiftui/
struct NavigationBarModifier: ViewModifier {
        
    var backgroundColor: UIColor?
    
    init( backgroundColor: UIColor?) {
        self.backgroundColor = backgroundColor
        let coloredAppearance = UINavigationBarAppearance()
        coloredAppearance.configureWithTransparentBackground()
        coloredAppearance.backgroundColor = .clear
        coloredAppearance.titleTextAttributes = [.foregroundColor: UIColor.white]
        coloredAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        
        UINavigationBar.appearance().standardAppearance = coloredAppearance
        UINavigationBar.appearance().compactAppearance = coloredAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = coloredAppearance
        UINavigationBar.appearance().tintColor = .white

    }
    
    func body(content: Content) -> some View {
        ZStack{
            content
            VStack {
                GeometryReader { geometry in
                    Color(self.backgroundColor ?? .clear)
                        .frame(height: geometry.safeAreaInsets.top)
                        .edgesIgnoringSafeArea(.top)
                    Spacer()
                }
            }
        }
    }
}

// from https://blog.techchee.com/navigation-bar-title-style-color-and-custom-back-button-in-swiftui/
class Theme {
    static func navigationBarColors(background : UIColor?,
       titleColor : UIColor? = nil, tintColor : UIColor? = nil ){
        
        let navigationAppearance = UINavigationBarAppearance()
        navigationAppearance.configureWithOpaqueBackground()
        navigationAppearance.backgroundColor = background ?? .clear
        
        navigationAppearance.titleTextAttributes = [.foregroundColor: titleColor ?? .black]
        navigationAppearance.largeTitleTextAttributes = [.foregroundColor: titleColor ?? .black]
       
        UINavigationBar.appearance().standardAppearance = navigationAppearance
        UINavigationBar.appearance().compactAppearance = navigationAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = navigationAppearance

        UINavigationBar.appearance().tintColor = tintColor ?? titleColor ?? .black
    }
}
func link<Destination: View>(_ icon: String, _ title: String, to destination: () -> Destination) -> some View {
    NavigationLink(destination: destination) {
        Label(title, systemImage: icon)
    }
}

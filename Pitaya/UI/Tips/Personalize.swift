//
//  Personalize.swift
//  Pitaya
//
//  Created by samara on 6/11/23.
//

import SwiftUI

struct Personalize: View {
    
    @Environment(\.presentationMode) var presentation
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack {
                Rectangle()
                    .fill(
                        LinearGradient(gradient: Gradient(colors: [Color(red: 1.0, green: 0.65, blue: 0.35), Color(red: 1.0, green: 0.65, blue: 0.75), Color.clear]), startPoint: .top, endPoint: .bottom)
                    )
                    .stretchy(isTop: true)
                    .frame(height: 260)
                    .overlayView(title: "Personalize",
                                 desc: "Here's how you would personalize your device",
                                 imageName: "paintbrush.pointed.fill",
                                 color: colorScheme == .dark ? .white : .black,
                                 alignment: .bottomLeading)
                
                
                VStack {
                    content
                }
            }
        }
        .edgesIgnoringSafeArea(.vertical)
        .navigationBarBackButtonHidden(true)
        .toolbar(content: {
            ToolbarItem(placement: .navigationBarLeading) {
                Image(systemName: "chevron.left.circle.fill")
                    .foregroundColor(colorScheme == .dark ? .white : .black)
                    .opacity(0.8)
                    .scaleEffect(1.2)
                    .onTapGesture {
                        self.presentation.wrappedValue.dismiss()
                    }
            }
        })
    }
    
    let content: some View =
    VStack(spacing: 16) {
        
        NavigationLink(destination: About()) {
            VStack(alignment: .leading, spacing: 8) {
                HStack {
                    Image("leafban")
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 70, height: 86)
                        .clipShape(RoundedRectangle(cornerRadius: 6))
                    VStack(alignment: .leading) {
                        Text("Customize your device")
                            .font(.system(size: 18))
                            .bold()
                            .foregroundColor(Color(UIColor.label))
                            .alignmentGuide(.leading) { _ in 0 } // Align the subtext to the left
                        
                        Text("You're able to use package managers to install tweaks that tweak your system, these come in a wide...")
                            .font(.subheadline)
                            .foregroundColor(Color(UIColor.secondaryLabel))
                            .multilineTextAlignment(.leading)
                    }
                    
                    Spacer()
                    
                    Image(systemName: "chevron.right")
                        .foregroundColor(Color(UIColor.systemGray2))
                }
            }
            .padding()
            .background(Color(UIColor.secondarySystemBackground))
            .cornerRadius(16)
        }

        
        Spacer(minLength: 40)
    }
    .padding(.horizontal)
    .padding(.vertical, 8)

    
    
}

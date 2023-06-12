//
//  Benefits.swift
//  Pitaya
//
//  Created by samara on 6/11/23.
//

import SwiftUI

struct Benefits: View {
    
    @Environment(\.presentationMode) var presentation
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack {
                Rectangle()
                    .fill(
                        LinearGradient(gradient: Gradient(colors: [Color.green, Color.clear]), startPoint: .top, endPoint: .bottom)
                    )
                    .stretchy(isTop: true)
                    .frame(height: 260)
                    .overlayView(title: "Benefits",
                                 desc: "Looking at the positives of jailbreaking",
                                 imageName: "hand.thumbsup.fill",
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
        
        VStack(alignment: .leading, spacing: 8) {
            HStack {
                Text("Customizability")
                    .font(.title3)
                    .bold()
                    .opacity(0.9)
                
                Spacer()
                
                sfGradient(systemName: "scribble.variable", gradientColors: [.teal])
            }
            
            Divider()
            
            Text("The main part of jailbreaking is the customizability side of it! \n\nYou're able to customize your device you've jailbroken to the fullest extent with community made modifications that you can installed via a package manager. \n\nWith jailbreaking, anything (and quiet literally anything) can be customizable if given enough effort by the developer and user.")
                .font(.subheadline)
        }
        .padding()
        .background(Color(UIColor.secondarySystemBackground))
        .cornerRadius(8)
        
        VStack(alignment: .leading, spacing: 8) {
            HStack {
                Text("QOL improvements")
                    .font(.title3)
                    .bold()
                    .opacity(0.9)
                
                Spacer()
                
                sfGradient(systemName: "figure.walk", gradientColors: [.green])
            }
            
            Divider()
            
            Text("Another main thing about jailbreaking is the quality of life modifications (or so called \"tweaks\") you'd find on the store that comes pre-installed with jailbreaks. \n\nMany things include some wanted features that people have wanted for years such as a battery percentage in the statusbar, or changing the homescreen by having custom icons. ")
                .font(.subheadline)
        }
        .padding()
        .background(Color(UIColor.secondarySystemBackground))
        .cornerRadius(8)
        
        VStack(alignment: .leading, spacing: 8) {
            HStack {
                Text("The fun side")
                    .font(.title3)
                    .bold()
                    .opacity(0.9)
                
                Spacer()
                
                sfGradient(systemName: "party.popper", gradientColors: [Color(red: 1.0, green: 0.65, blue: 0.35)])
            }
            
            Divider()
            
            Text("If you have some old device you want to mess around with then you may want to consider getting to jailbreaking from the above benefits! \n\nSince there's less risk and more reward with what you do with a jailbreak with a throwaway device, it doesn't even hurt to try!")
                .font(.subheadline)
        }
        .padding()
        .background(Color(UIColor.secondarySystemBackground))
        .cornerRadius(8)
        
        Spacer(minLength: 40)
    }
    .padding(.horizontal)
    .padding(.vertical, 8)

    
    
}
// Why you would want to even jailbreak
// Customizability
// Everyday uses
// Having fun

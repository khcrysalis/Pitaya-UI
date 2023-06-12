//
//  Downsides.swift
//  Pitaya
//
//  Created by samara on 6/11/23.
//

import SwiftUI

struct Downsides: View {
    
    @Environment(\.presentationMode) var presentation
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack {
                Rectangle()
                    .fill(
                        LinearGradient(gradient: Gradient(colors: [Color.purple, Color.clear]), startPoint: .top, endPoint: .bottom)
                    )
                    .stretchy(isTop: true)
                    .frame(height: 260)
                    .overlayView(title: "Downsides",
                                 desc: "Looking at the downsides of jailbreaking",
                                 imageName: "hand.thumbsdown.fill",
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
                Text("Security")
                    .font(.title3)
                    .bold()
                    .opacity(0.9)
                
                Spacer()
                
                sfGradient(systemName: "shield.slash", gradientColors: [.red])
            }
            
            Divider()
            
            Text("To even consider wanting to jailbreak you have to know that jailbreaks abuse exploits and bypasses that a phone could have either hardware-wise or software-wise. \n\nThis means when you jailbreak theres gonna be a big hole for anything to try to attempt to compremise your device, however, barely anyone has even abused this flaw and nor should you worry too much.")
                .font(.subheadline)
        }
        .padding()
        .background(Color(UIColor.secondarySystemBackground))
        .cornerRadius(8)
        
        VStack(alignment: .leading, spacing: 8) {
            HStack {
                Text("Malicious packages")
                    .font(.title3)
                    .bold()
                    .opacity(0.9)
                
                Spacer()
                
                sfGradient(systemName: "exclamationmark.triangle", gradientColors: [.purple])
            }
            
            Divider()
            
            Text("Packages that you install are able to run anything malicious on your device, just stick with trusted sources, repos, and developers if you want to be safe.")
                .font(.subheadline)
        }
        .padding()
        .background(Color(UIColor.secondarySystemBackground))
        .cornerRadius(8)
        
        VStack(alignment: .leading, spacing: 8) {
            HStack {
                Text("Jailbreak detection")
                    .font(.title3)
                    .bold()
                    .opacity(0.9)
                
                Spacer()
                
                sfGradient(systemName: "nosign.app", gradientColors: [.orange])
            }
            
            Divider()
            
            Text("Since jailbreaking is a security flaw in itself it's obvious that apps would want to block them due to the risks, however there's bypasses that packages can have to let you still use the app even when jailbroken!")
                .font(.subheadline)
        }
        .padding()
        .background(Color(UIColor.secondarySystemBackground))
        .cornerRadius(8)
        
        VStack(alignment: .leading, spacing: 8) {
            HStack {
                Text("The community")
                    .font(.title3)
                    .bold()
                    .opacity(0.9)
                
                Spacer()
                
                sfGradient(systemName: "person.2", gradientColors: [.cyan])
            }
            
            Divider()
            
            Text("Unfortunately, the jailbreak scene and community is quite toxic which leads developers to move away from it, it's been getting worse and worse every year. \n\nBut there's also some good places about it, like the reachability to developers and having fun with it like another people.")
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
// May want to move community to it's own section

//
//  About.swift
//  Pitaya
//
//  Created by samara on 6/10/23.
//

import SwiftUI

struct About: View {
    
    @Environment(\.presentationMode) var presentation
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack {
                Rectangle()
                    .fill(
                        LinearGradient(gradient: Gradient(colors: [Color.red, Color.clear]), startPoint: .top, endPoint: .bottom)
                    )
                    .stretchy(isTop: true)
                    .frame(height: 260)
                    .overlayView(title: "About jailbreaking",
                                 desc: "General questions and common misconceptions",
                                 imageName: "lock.open.fill",
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
                Text("What is jailbreaking?")
                    .font(.title3)
                    .bold()
                    .opacity(0.9)
                
                Spacer()
                
                sfGradient(systemName: "questionmark.circle.fill", gradientColors: [.mint])
            }
            
            Divider()
            
            Text("Jailbreaking allows you to gain control over your own device. \n\nApple has always been known for their tight security and disallowing most aspects of their operating system to be customizable. \n\nJailbreaking allows you to break these restrictions and customize and tinker with your device to your liking.")
                .font(.subheadline)
        }
        .padding()
        .background(Color(UIColor.secondarySystemBackground))
        .cornerRadius(8)
        
        VStack(alignment: .leading, spacing: 8) {
            HStack {
                Text("Is jailbreaking legal?")
                    .font(.title3)
                    .bold()
                    .opacity(0.9)
                
                Spacer()
                
                sfGradient(systemName: "text.book.closed.fill", gradientColors: [.teal])
            }
            Divider()
            
            Text("Jailbreaking in the US is perfectly legal. \n\nIn 2010, the US Copyright Office declared jailbreaking to be an exception to the Digital Millennium Copyright Act.")
                .font(.subheadline)
        }
        .padding()
        .background(Color(UIColor.secondarySystemBackground))
        .cornerRadius(8)
        
        VStack(alignment: .leading, spacing: 8) {
            HStack {
                Text("Is it safe?")
                    .font(.title3)
                    .bold()
                    .opacity(0.9)
                
                Spacer()
                
                sfGradient(systemName: "person.badge.shield.checkmark", gradientColors: [.red])
            }
            
            Divider()
            
            Text("All jailbreaks that are publicly available are safe, it just depends on how you use your jailbreak.\n\nIf you install malicious packages such as piracy then you may get spyware or some potential virus. It's recommend you avoid those to be safe and stick with default repositories.")
                .font(.subheadline)
        }
        .padding()
        .background(Color(UIColor.secondarySystemBackground))
        .cornerRadius(8)
        
        VStack(alignment: .leading, spacing: 8) {
            HStack {
                Text("What can I do once jailbroken?")
                    .font(.title3)
                    .bold()
                    .opacity(0.9)
                
                Spacer()
                
                sfGradient(systemName: "person.badge.key", gradientColors: [.blue])
            }
            
            Divider()
            
            Text("In a lot of cases jailbreaks will install a special app that lets you install community made packages or \"tweaks\", these apps allow you to install said packages and make you be able to theme your device how you like it.\n\nThere's also quality of life tweaks and tweaks that make app experienced better too!")
                .font(.subheadline)
        }
        .padding()
        .background(Color(UIColor.secondarySystemBackground))
        .cornerRadius(8)
        
        VStack(alignment: .leading, spacing: 8) {
            HStack {
                Text("What should I know before?")
                    .font(.title3)
                    .bold()
                    .opacity(0.9)
                
                Spacer()
                
                sfGradient(systemName: "person.badge.clock", gradientColors: [.orange])
            }
            
            Divider()
            
            Text("• It is strongly recommended to backup your device to iCloud, iTunes, or Finder (on macOS Catalina or newer) in case of data loss\n\n• If no issues occur during installation, you will be jailbroken without any data loss\n\n• Keep the device plugged into to a power source or keep the battery fairly charged, so that any unexpected power off can be prevented\n\n• Jailbreaking allows you to unlock your system but can lead to data loss if you damage the OS\n\n• You may be vulnerable to more malware and other security issues after jailbreaking compared to if you were in a non-jailbroken state\n\n• Your device warranty will become void after jailbreaking until it is restored to an un-jailbroken state, which is easy to do")
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

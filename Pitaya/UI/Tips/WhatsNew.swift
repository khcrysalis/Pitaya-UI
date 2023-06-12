//
//  WhatsNew.swift
//  Pitaya
//
//  Created by samara on 6/11/23.
//

import SwiftUI
import URLImage

struct WhatsNew: View {
    
    @Environment(\.presentationMode) var presentation
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack {
                Rectangle()
                    .fill(
                        LinearGradient(gradient: Gradient(colors: [Color.teal, .blue, Color.clear]), startPoint: .top, endPoint: .bottom)
                    )
                    .stretchy(isTop: true)
                    .frame(height: 260)
                    .overlayView(title: "What's new",
                                 desc: "See what recent jailbreaks released",
                                 imageName: "sparkles",
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
            
            headerCell(title: "Dopamine", urlimage: "https://user-images.githubusercontent.com/52459150/238158404-ed04dd3e-d879-456d-9aa3-d4ed44819c7e.png", version: "1.0.0", urldirect: "https://ellekit.space/dopamine")
            
            Divider()
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    createInfoCell(title: "VERSION", middletext: "15.0 - 15.4.1", footer: "Compatibility")
                    
                    Divider()
                    
                    createInfoCell(title: "DEVICE", middletext: "A12 - A15, M1", footer: "Support")
                    
                    Divider()
                    
                    createInfoCell(title: "TYPE", middletext: "Rootless", footer: "Jailbreak")
                    
                    Divider()
                    
                    createInfoCellPicture(title: "DEVELOPER", image: "person.crop.circle", footer: "opa334")
                }
                .padding(.horizontal)
            }
        }
        .padding()
        .background(Color(UIColor.secondarySystemBackground))
        .cornerRadius(16)
        
        VStack(alignment: .leading, spacing: 8) {
            
            headerCell(title: "XinaA15", urlimage: "https://senumy.com/images/xina-new-logo.JPG", version: "1.1.8", urldirect: "https://ellekit.space/dopamine")
            
            Divider()
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    createInfoCell(title: "VERSION", middletext: "15.0 - 15.1.1", footer: "Compatibility")
                    
                    Divider()
                    
                    createInfoCell(title: "DEVICE", middletext: "A12 - A15, M1", footer: "Support")
                    
                    Divider()
                    
                    createInfoCell(title: "TYPE", middletext: "Rootless", footer: "Jailbreak")
                    
                    Divider()
                    
                    createInfoCellPicture(title: "DEVELOPER", image: "person.crop.circle", footer: "xina520")
                }
                .padding(.horizontal)
            }
        }
        .padding()
        .background(Color(UIColor.secondarySystemBackground))
        .cornerRadius(16)
        
        VStack(alignment: .leading, spacing: 8) {
            
            headerCell(title: "palera1n", urlimage: "https://github.com/palera1n.png", version: "2.0.0 beta 7", urldirect: "https://palera.in")
            
            Divider()
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    createInfoCell(title: "VERSION", middletext: "15.0 - 16.5", footer: "Compatibility")
                    
                    Divider()
                    
                    createInfoCell(title: "DEVICE", middletext: "A8 - A11", footer: "Support")
                    
                    Divider()
                    
                    createInfoCell(title: "TYPE", middletext: "Rootful", footer: "Jailbreak")
                    
                    Divider()
                    
                    createInfoCell(title: "TYPE", middletext: "Rootless", footer: "Jailbreak")
                    
                    Divider()
                    
                    createInfoCellPicture(title: "DEVELOPER", image: "person.crop.circle", footer: "palera1n team")
                }
                .padding(.horizontal)
            }
        }
        .padding()
        .background(Color(UIColor.secondarySystemBackground))
        .cornerRadius(16)

        VStack(alignment: .leading, spacing: 8) {
            
            headerCell(title: "Taurine", urlimage: "https://ipabox.store/icons/taurine.png", version: "1.1.6", urldirect: "https://taurine.app")
            
            Divider()
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    createInfoCell(title: "VERSION", middletext: "14.0 - 14.3", footer: "Compatibility")
                    
                    Divider()
                    
                    createInfoCell(title: "DEVICE", middletext: "A8 - A14", footer: "Support")
                    
                    Divider()
                    
                    createInfoCell(title: "TYPE", middletext: "Rootful", footer: "Jailbreak")
                    
                    Divider()
                    
                    createInfoCellPicture(title: "DEVELOPER", image: "person.crop.circle", footer: "OdysseyTeam")
                }
                .padding(.horizontal)
            }
        }
        .padding()
        .background(Color(UIColor.secondarySystemBackground))
        .cornerRadius(16)

        
        Spacer(minLength: 40)
    }
    .padding(.horizontal)
    .padding(.vertical, 8)

    
    
}

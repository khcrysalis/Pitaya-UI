//
//  ViewController.swift
//  Pitaya
//
//  Created by samara on 6/6/23.
//

import SwiftUI

struct ViewController: View {
    @State private var searchText = ""
    
    var body: some View {
        NavigationView {
            List {
                
                Section {
                    Text("Setup checklist")
                        .font(.bold(.title)())
                        .opacity(0.9)
                        .padding(.leading, -7)
                    
                    HStack {
                            Spacer()
                            
                        Image(systemName: "lock.rectangle.stack.fill")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100, height: 130)
                            .foregroundColor(.white)
                            .overlay(
                                LinearGradient(gradient: Gradient(colors: [.clear, .teal.opacity(0.7)]), startPoint: .top, endPoint: .bottom)
                            )
                            .mask(
                                Image(systemName: "lock.rectangle.stack.fill")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                            )
                            .opacity(0.8)

                            
                            Spacer()
                        }
                }
                //.frame(height: 40)
                .listRowSeparator(.hidden)
                .listRowBackground(
                    LinearGradient(gradient: Gradient(colors: [Color.green.opacity(0.7), Color.teal.opacity(0.7)]), startPoint: .leading, endPoint: .trailing)
                )



                
                Section(header:
                    CustomSectionHeader(title: "Get Started")
                ) {
                    NavigationLink(destination: About()) {
                        HStack(spacing: .maximum(18, 18)) {
                            sfGradient(systemName: "lock.open", gradientColors: [.pink, .orange])
                            CellText(text: "About jailbreaking")
                        }
                    }
                }
                
                Section(header:
                    CustomSectionHeader(title: "Capabilities")
                ) {
                    NavigationLink(destination: Benefits()) {
                        HStack(spacing: .maximum(18, 18)) {
                            sfGradient(systemName: "hand.thumbsup", gradientColors: [.green, .clear])
                            CellText(text: "The benefits")
                        }
                    }
                    
                    NavigationLink(destination: Downsides()) {
                        HStack(spacing: .maximum(18, 18)) {
                            sfGradient(systemName: "hand.thumbsdown", gradientColors: [.purple, .blue])
                            CellText(text: "The downsides")
                        }
                    }
                }
                
                Section(header:
                    CustomSectionHeader(title: "Next Steps")
                ) {
                    NavigationLink(destination: WhatsNew()) {
                        HStack(spacing: .maximum(18, 18)) {
                            sfGradient(systemName: "sparkles", gradientColors: [.teal, .clear])
                            CellText(text: "See what's new")
                        }
                    }
                    NavigationLink(destination: Personalize()) {
                        HStack(spacing: .maximum(18, 18)) {
                            sfGradient(systemName: "paintbrush.pointed", gradientColors: [Color(red: 1.0, green: 0.65, blue: 0.35), Color(red: 1.0, green: 0.75, blue: 0.85)])
                            CellText(text: "Personalize your iPhone")
                        }
                    }
                }
                
//                Section(header:
//                    CustomSectionHeader(title: "Community")
//                ) {
//                    Button(action: {
//                        print("Communityes")
//                    }) {
//                        HStack(spacing: .maximum(18, 18)) {
//                            sfGradient(systemName: "person.2", gradientColors: [.indigo, .red])
//                            CellText(text: "See communities")
//                        }
//                    }
//                }

                Section(header:
                    CustomSectionHeader(title: "User Guides")
                ) {
                    Button(action: {
                        print("benefits")
                    }) {
                        HStack(spacing: .maximum(18, 18)) {
                            sfGradient(systemName: "shippingbox", gradientColors: [.teal, .blue])
                            CellText(text: "Package Managers")
                        }
                    }
                    
                    Button(action: {
                        print("Security")
                    }) {
                        HStack(spacing: .maximum(18, 18)) {
                            sfGradient(systemName: "archivebox", gradientColors: [.orange, Color(UIColor.systemYellow)])
                            CellText(text: "Packages")
                        }
                    }
                }
                
                
                
            }
            .listStyle(InsetGroupedListStyle())
            .navigationBarTitle("Tips", displayMode: .large)
            .searchable(text: $searchText)
        }
        .background(Color(UIColor.systemBackground))
    }
}











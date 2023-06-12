//
//  CellWhatsNew.swift
//  Pitaya
//
//  Created by samara on 6/11/23.
//

import URLImage
import SwiftUI

func createPoint(text: String, symbolName: String) -> some View {
    HStack {
        Image(systemName: symbolName)
            .frame(width: 14, height: 16)
        
        Text(text)
            .font(.system(size: 14))
    }
}

func dataToYou() -> some View {
    VStack(alignment: .center, spacing: 8) {
        Image(systemName: "person.circle")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 32, height: 32)
            .foregroundColor(.accentColor)
        Text("Data Linked to You")
            .font(.system(size: 16))
            .fontWeight(.semibold)
        Text("The following data may be collected and linked to your identity:")
            .font(.caption)
            .foregroundColor(.secondary)
            .fontWeight(.semibold)
            .multilineTextAlignment(.center)
    }
    .padding()
    
}

func createInfoCell(title: String, middletext: String, footer: String) -> some View {
    VStack {
        Text(title)
            .font(.caption)
            .foregroundColor(.secondary)
            .fontWeight(.semibold)
        Text(middletext)
            .font(.system(size: 16))
            .fontWeight(.semibold)
            .frame(height: 20)
            .opacity(0.8)
        Text(footer)
            .font(.caption)
            .foregroundColor(.secondary)
            .fontWeight(.semibold)
    }
}

func createInfoCellPicture(title: String, image: String, footer: String) -> some View {
    VStack {
        Text(title)
            .font(.caption)
            .foregroundColor(.secondary)
            .fontWeight(.semibold)
        Image(systemName: image)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 20, height: 20)
            .opacity(0.8)
        Text(footer)
            .font(.caption)
            .foregroundColor(.secondary)
            .fontWeight(.semibold)
    }
}

func createInfoCellURL(title: String, urlimage: String, footer: String) -> some View {
    VStack {
        Text(title)
            .font(.caption)
            .foregroundColor(.secondary)
            .fontWeight(.semibold)
        URLImage(URL(string: urlimage)!) { image in
            image
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 20, height: 20)
                .clipShape(RoundedRectangle(cornerRadius: 5))
                .opacity(0.8)
        }
        Text(footer)
            .font(.caption)
            .foregroundColor(.secondary)
            .fontWeight(.semibold)
    }
}

func headerCell(title: String, urlimage: String, version: String, urldirect: String) -> some View {
    HStack {
        URLImage(URL(string: urlimage)!) { image in
            image
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 56, height: 56) // Adjust the width and height as needed for your icon
                .clipShape(RoundedRectangle(cornerRadius: 14))
                .foregroundColor(.red) // Customize the icon color
        }
        VStack(alignment: .leading) {
            Text(title)
                .font(.title2)
                .bold()
                .foregroundColor(Color(UIColor.label))
                .alignmentGuide(.leading) { _ in 0 } // Align the subtext to the left
            
            Text(version)
                .font(.subheadline)
                .foregroundColor(Color(UIColor.secondaryLabel))
                .alignmentGuide(.leading) { _ in 0 } // Align the subtext to the left
        }
        
        Spacer()
        
        Button(action: {
            if let url = URL(string: urldirect) {
                UIApplication.shared.open(url)
            }
        }) {
            Text("GET")
                .font(.system(size: 14))
                .fontWeight(.bold)
                .foregroundColor(.white)
                .padding(.horizontal, 22)
                .padding(.vertical, 6)
                .background(Color.blue)
                .cornerRadius(20) // Adjust the corner radius as needed for the pill shape
        }
    }
}

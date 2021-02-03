//
//  ContentView.swift
//  adityaCard
//
//  Created by Aditya kumar on 27/04/20.
//  Copyright © 2020 Aditya kumar. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{  //zStack - from bact to front
            Color(red: 0.09, green: 0.63, blue: 0.52)
                .edgesIgnoringSafeArea(.all)
            VStack {
                
                Image("Aditya ")
                    .resizable()
                    //.frame(width: 300, height: 300)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 300, height: 300)
                    .clipShape(Circle())
                    
                
                Text("Aditya Kumar!!").font(Font.custom("Pacifico-Regular", size: 40)).bold().foregroundColor(.white)
             //foregroundColor-text colour or begining color
                Text("ios Developer").foregroundColor(.white).font(.system(size: 30))
                
                Divider()
                
                infoView(infoText: "+91 9521865494", imageName: "phone.fill")
                
                infoView(infoText: "aditya.kumar7882@gmail.com", imageName: "envelope.fill")
            
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct infoView: View {
    
    let infoText: String
    let imageName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25).frame(height: 50).foregroundColor(.white)
            .overlay(HStack {
                Image(systemName: imageName).foregroundColor(.green)
                Text(infoText)
            })
            .padding(.all)
    }
}

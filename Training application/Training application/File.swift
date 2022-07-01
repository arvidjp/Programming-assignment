//
//  File.swift
//  Training application
//
//  Created by Arvid Jedeur-Palmgren on 2022-07-01.
//

import Foundation
import SwiftUI



struct MyTrainings: View {
    var body: some View {
        
        VStack() {
            ScrollView {
            Övningar()
            
            }
        }
    }
}
        
        
 struct Övningar: View {
        var body: some View {
            ZStack{
                RoundedRectangle(cornerRadius: 40)
                .fill()
                RoundedRectangle(cornerRadius: 40)
                    .stroke(lineWidth: 4)
                    Text("Övning 1")
                    .foregroundColor(Color.orange)
                    .font(.largeTitle)
                } .aspectRatio(10/3, contentMode: .fit)
                .onTapGesture {
                    
                }
        

        
 
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    }
}

//
//  MyExercises.swift
//  Training application
//
//  Created by Arvid Jedeur-Palmgren on 2022-07-15.
//

import SwiftUI

struct MyExercises: View {
    var body: some View {
        
        VStack {
            NavigationView {
                
            
                List {
                    
                    Text("Exercise")
                        .font(.system(size: 32, weight: .medium, design: .default))
                        .padding()
                    
         
                
            }
                .navigationBarTitle(Text("My Exercises"), displayMode: .large)
        }
            Button("Add exercise"){
                
                
                print("Exercise added!")
                
            } .padding()
            .background(.gray)
            .foregroundColor(Color.white)
            .cornerRadius(15)
        }
        
    }
        
}

struct MyExercises_Previews: PreviewProvider {
    static var previews: some View {
        MyExercises()
    }
}

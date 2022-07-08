//
//  MyWorkouts.swift
//  Training application
//
//  Created by Arvid Jedeur-Palmgren on 2022-07-01.
//

import SwiftUI

struct MyWorkouts: View {
    //var workoutname = readLine()
    var workoutnumber = +0
    var body: some View {
        VStack{
            
        NavigationView {
        
            List {
            
            
            Text("Workout \(workoutnumber)")
                .font(.system(size: 32, weight: .medium, design: .default))
                .padding()
            Text("Workout \(workoutnumber)")
                .font(.system(size: 32, weight: .medium, design: .default))
                .padding()

                
            
        }
            .navigationBarTitle(Text("My Workouts"), displayMode: .large)
            }
        
                ZStack{
                    
                    RoundedRectangle(cornerRadius: 40)
                        .fill(Color.white)
                    RoundedRectangle(cornerRadius: 40)
                        .stroke(lineWidth: 4)
                        Text("Registrera nytt träningspass")
                        .foregroundColor(Color.black)
                        .font(.largeTitle)
                }
                .aspectRatio(10/3, contentMode: .fit)
                .onTapGesture {
            }
        }
    }
}


struct MyWorkouts_Previews: PreviewProvider {
    static var previews: some View {
        MyWorkouts()
    }
}

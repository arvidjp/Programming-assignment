//
//  MyWorkouts.swift
//  Training application
//
//  Created by Arvid Jedeur-Palmgren on 2022-07-01.
//

import SwiftUI

struct MyWorkouts: View {
    var body: some View {
        HStack {
            
            Text("Övning 1")
                .font(.system(size: 32, weight: .medium, design: .default))
                .padding()
        }
    }
}

struct MyWorkouts_Previews: PreviewProvider {
    static var previews: some View {
        MyWorkouts()
    }
}

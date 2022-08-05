//
//  AddWorkout.swift
//  Training application
//
//  Created by Arvid Jedeur-Palmgren on 2022-08-03.
//

import SwiftUI

struct AddWorkout: View {
    
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var workoutData : WorkoutsData
    @State var workoutName = ""
    
    var body: some View {
        
        
        Form {
            
            
            Section {
                TextField("Namn på träningspass", text: $workoutName)
                
                Button(action: saveButtonPressed, label: {
                    Text("Lägg till träningspass")
                })
            }
        }
        .navigationTitle("Lägg till nytt träningspass")
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing){
                Button {
                    hideKeyboard()
                } label: {
                    Image(systemName: "keyboard.chevron.compact.down")
                }
            }
        }
        
    }
    func saveButtonPressed() {
        workoutData.addWorkout(workoutName: workoutName)
        presentationMode.wrappedValue.dismiss()
    }
    
}

struct AddWorkout_Previews: PreviewProvider {
    static var previews: some View {
        AddWorkout()
            .environmentObject(WorkoutsData())
    }
}

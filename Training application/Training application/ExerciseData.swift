//
//  ExerciseData.swift
//  Training application
//
//  Created by Arvid Jedeur-Palmgren on 2022-07-20.
//
import Combine
import SwiftUI

class ÖvningsData: ObservableObject {
    
    @Published var övningar : [ExerciseDataModel] = [] {
        didSet {
            saveÖvningar()
        }
    }
    let övningarKey : String = "övningar_list"
    
    init() {
        getItems()
        
    }
    func getItems() {
        guard
            let data = UserDefaults.standard.data(forKey: övningarKey),
            let saveÖvningar = try? JSONDecoder().decode([ExerciseDataModel].self, from: data)
        else {return}
        self.övningar = saveÖvningar
    }
    
    func deleteÖvning(indexSet: IndexSet) {
        övningar.remove(atOffsets: indexSet)
    }
    
    func addTheExercise(exerciseName : String, exerciseRep: String, exerciseSet: String, exerciseRest: String, exerciseWeight: String ) {
        let newExercise = ExerciseDataModel(exerciseName: exerciseName, exerciseRep: exerciseRep, exerciseSet: exerciseSet, exerciseRest: exerciseRest, exerciseWeight: exerciseWeight)
        övningar.append(newExercise)
    }
    
    func saveÖvningar() {
        if let encodedData = try? JSONEncoder().encode(övningar) {
            UserDefaults.standard.set(encodedData, forKey: övningarKey)
        }
    }

}










//struct ExerciseData_Previews: PreviewProvider {
    //static var previews: some View {
        //ExerciseData()
    //}
//}

//
//  ExerciseData.swift
//  Training application
//
//  Created by Arvid Jedeur-Palmgren on 2022-07-20.
//
import Combine
import SwiftUI

class ÖvningsData: ObservableObject {
 
var didChange = PassthroughSubject<Void, Never>()
    var namnPåÖvning = "" {didSet { didChange.send()}}
    var beskrivningAvÖvning = "" {didSet { didChange.send()}}
    var antalRepetitioner = "" {didSet { didChange.send()}}
    var antalSet = "" {didSet { didChange.send()}}
    var viloTid = "" {didSet { didChange.send()}}
    var belastning = "" {didSet { didChange.send()}}
}


struct ExerciseData: Identifiable {
    let id = UUID()
    let exerciseName: String
    let exerciseDescription: String
    let exerciseRep: Int
    let exerciseSet: Int
    let exerciseRest: Double
    let exerciseWeight: Int
    
    
}

struct ExerciseDataList {
    
   // @Binding var Exercises : [String]
    static let Exercises = [ExerciseData(exerciseName: "bänk", exerciseDescription: "tränar börst", exerciseRep: 4, exerciseSet: 5, exerciseRest: 1.30, exerciseWeight: 60)]
    
   
}







//struct ExerciseData_Previews: PreviewProvider {
    //static var previews: some View {
        //ExerciseData()
    //}
//}

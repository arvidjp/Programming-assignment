//
//  ContentView.swift
//  Training application
//
//  Created by Arvid Jedeur-Palmgren on 2022-06-28.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
            NavigationView {
                
                VStack {
                NavigationLink (destination: MyWorkouts()) {
                    Minaträningspass()
                }
                NavigationLink(destination:MyExercises()) {
                    MinaÖvningar()
                }
                Spacer()
                }
                .padding()
        }
    }
}

struct Minaträningspass: View {
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 40)
                .fill()
                .foregroundColor(Color.black)
            RoundedRectangle(cornerRadius: 40)
                .stroke()
                Text("Mina träningspass")
                .foregroundColor(Color.orange)
                .font(.largeTitle)
        } .aspectRatio(10/3, contentMode: .fit)
    }
}

struct MinaÖvningar: View {
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 40)
                .fill()
                .foregroundColor(Color.black)
            RoundedRectangle(cornerRadius: 40)
                .stroke()
                Text("Mina övningar")
                .foregroundColor(Color.orange)
                .font(.largeTitle)
        } .aspectRatio(10/3, contentMode: .fit)
    }
}


// Knapp för att kunna dela med sig av sina övningar till sina vänner, denna används inte i dagsläget
//    struct DelaÖvningar: View {
//        var body: some View {
//            ZStack{
//                RoundedRectangle(cornerRadius: 40)
//                    .fill()
//                RoundedRectangle(cornerRadius: 40)
//                    .stroke(lineWidth: 4)
//                    Text("Dela övningar")
//                    .foregroundColor(Color.orange)
//                    .font(.largeTitle)
//            } .aspectRatio(10/3, contentMode: .fit)
//            .onTapGesture {
//        }
//    }
//}

// En knapp för att en användare ska kunna logga ut från sitt konto, används inte i detta skede

// var signout: some View {
  //   Button(action:{}, label: { Text("Logga ut")
    //         .foregroundColor(Color.red)
      //   .font(.title3)})
//  }


// Hur knappen för att ta användaren till sitt konto ska se ut, används inte i detta läget

//struct Mittkonto: View{
//    var body: some View {
//        ZStack{
//            RoundedRectangle(cornerRadius: 40)
//                .fill()
//            RoundedRectangle(cornerRadius: 40)
//                .stroke(lineWidth:4)
//
//            Text("Mitt konto")
//                .foregroundColor(Color.orange)
//                .font(.largeTitle)
//
//        }
//        .aspectRatio(10/3, contentMode: .fit)
//
//    }
//}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



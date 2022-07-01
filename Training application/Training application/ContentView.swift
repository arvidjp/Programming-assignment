//
//  ContentView.swift
//  Training application
//
//  Created by Arvid Jedeur-Palmgren on 2022-06-28.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(colors: [.black, .white], startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
        
        VStack {
            
            Minaträningspass()
            MinaÖvningar()
            DelaÖvningar()
            Mittkonto()
            Spacer()
            signout
            //ZStack {
                
                //signout
                //Spacer()
            //}
            //.padding(.horizontal)
        }
        .foregroundColor(Color.white)
        .padding(.horizontal)
        
        }
    }
}

var signout: some View {
    Button(action:{}, label: { Text("Logga ut")
            .foregroundColor(Color.red)
            .font(.title3)})
}

struct Minaträningspass: View {
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 40)
                .fill()
            RoundedRectangle(cornerRadius: 40)
                .stroke(lineWidth: 4)
                Text("Mina träningspass")
                .foregroundColor(Color.orange)
                .font(.largeTitle)
        } .aspectRatio(10/3, contentMode: .fit)
        .onTapGesture {
           
        }
    }
}

struct MinaÖvningar: View {
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 40)
                .fill()
            RoundedRectangle(cornerRadius: 40)
                .stroke(lineWidth: 4)
                Text("Mina övningar")
                .foregroundColor(Color.orange)
                .font(.largeTitle)
        } .aspectRatio(10/3, contentMode: .fit)
        .onTapGesture {
            
        }
    }
}

    struct DelaÖvningar: View {
        var body: some View {
            ZStack{
                RoundedRectangle(cornerRadius: 40)
                    .fill()
                RoundedRectangle(cornerRadius: 40)
                    .stroke(lineWidth: 4)
                    Text("Dela övningar")
                    .foregroundColor(Color.orange)
                    .font(.largeTitle)
            } .aspectRatio(10/3, contentMode: .fit)
            .onTapGesture {
                
            }
        }
    }

struct Mittkonto: View{
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 40)
                .fill()
            RoundedRectangle(cornerRadius: 40)
                .stroke(lineWidth:4)
                
            Text("Mitt konto")
                .foregroundColor(Color.orange)
                .font(.largeTitle)
            
        }
        .aspectRatio(10/3, contentMode: .fit)
        .onTapGesture {
            
        }
    }
}
        
// Sidan om användaren träningspass

struct trainings: View {
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
    


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


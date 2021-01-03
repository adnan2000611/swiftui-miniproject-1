//
//  ContentView.swift
//  project
//
//  Created by Mac on 1/2/21.
//

import SwiftUI

struct ContentView: View {
    let cycle = cycles
    var body: some View {
        
            
        
        NavigationView{
            
            
            
            
            VStack {
                
                Text("مرحبا بك ،، يمكنك اختيار الدرجة المناسبة لك من القاىمة واكمل بياناتك للحجز")
                List(cycles){cycle in
                    
                    
                    NavigationLink(
                        destination: Details(picture: cycle.image, price: cycle.price),
                        label: {
                            cycleRow(CycleImage: cycle.image, numberOfRow: cycle.number)
                        })
                    
                    
                }.navigationTitle("تاجير الدرجات").frame(width: 450)
                Spacer()
            }
        }
            
        
    }
}

struct cycleRow : View{
    let CycleImage : String
    let numberOfRow : Int
    
    
    var body: some View{
        
        
        HStack{
            Text("\(numberOfRow)").padding().background(Color(#colorLiteral(red: 0.198762387, green: 0.6742743254, blue: 0.8931196332, alpha: 1))).clipShape(Circle()).foregroundColor(.white)
            Image(CycleImage)
                .resizable()
                .scaledToFit()
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        }
        
    }
}



func TotalPrice(hour: Int , many: Int ,price: Int) -> Int {
    let theTotalPrice = price * many * hour
    
    return theTotalPrice
}

struct TextModifier :ViewModifier {
    var theColor :Color
    func body(content: Content) -> some View {
        content
            .padding()
            .frame(width: 380, height: 60, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .background(theColor)
            .foregroundColor(.white)
            .cornerRadius(15)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
        
        
    }
}





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
                List(cycles){ cycle in
                    
                    
                    
                    NavigationLink(
                        destination: Deatiels(picture: cycle.image, price: cycle.price),
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


struct Deatiels : View{
    
    let picture : String
    let price :Int
    @State var name = ""
    @State var Number = ""
    @State var Hour = 0
    @State var Many = 0
    @State var totalPrice = 0
    
    var body: some View{
        
        VStack{
            Image(picture).resizable().scaledToFit().frame(width: 400, height: 400, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            
            VStack{
            TextField("الاسم", text: $name)
            TextField("رقم الهاتف", text: $Number)
            
            HStack{
                
                Stepper("عدد الساعات \(Hour)", value: $Hour)
                    
               
                //Text("عدد الساعات \(Hour)")
                
            }
            HStack{
                Stepper("عدد الدرجات \(Many)", value: $Many)
            }
            }.padding()
            Spacer()
            VStack{
                Text("\(TotalPrice(hour: Hour, many: Many, price: price))")
                Text("المبلغ الكلي")
            }
            if (Hour != 0 && Many != 0 && name != "" && Number != ""){
                NavigationLink(
                    destination: BillView(bill: Bill(name: name, hour: Hour, number: Number, price: TotalPrice(hour: Hour, many: Many, price: price))),
                    label: {
                        Text("اضغط للمتابعة").modifier(TextModifier(theColor: .blue))
                    })
            }
        }.padding(.all, 15.0)
        
        
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
        Deatiels(picture: "cycle1", price: 4)
        
        
    }
}


//شلون اطلع الارقام
// شلون اشيل المسافه بين list و text
// شلون اعكس steper


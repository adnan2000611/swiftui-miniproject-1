//
//  Details.swift
//  project
//
//  Created by Mac on 1/3/21.
//

import SwiftUI

struct Details : View{
    
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
                
                Stepper("", value: $Hour).labelsHidden()
                Spacer()
               
                Text("عدد الساعات \(Hour)")
                
            }
            HStack{
                Stepper("", value: $Many).labelsHidden()
                
                Spacer()
                Text("عدد الدرجات \(Many)")
                
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

struct Details_Previews: PreviewProvider {
    static var previews: some View {
        Details(picture: "cycle1", price: 40)
    }
}

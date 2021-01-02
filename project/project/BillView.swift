//
//  BillView.swift
//  project
//
//  Created by Mac on 1/3/21.
//

import SwiftUI

struct BillView : View {
    let bill : Bill
    @State var Thecolor:Color = .blue
    @State var theText = "ادفع الان"
    var body: some View{
        
        VStack{
            
            HStack {
                Text("الاسم")
                Spacer()
                Text(bill.name)
            }
            HStack {
                Text("الساعات")
                Spacer()
                Text("\(bill.hour)")
            }
            HStack {
                Text("رقم الهاتف")
                Spacer()
                Text(bill.number)
            }
            HStack {
                Text("المبلغ")
                Spacer()
                Text("\(bill.price)")
            }
            Spacer()
            Text(theText).modifier(TextModifier(theColor: Thecolor)).onTapGesture {
                Thecolor = .green
                theText = "تم الدفع"
            }
        }.padding()
    }
}


struct BillView_Previews: PreviewProvider {
    static var previews: some View {
        BillView(bill: Bill(name: "adnan", hour: 12, number: "442", price: 443))
    }
}

//
//  MenuView.swift
//  MedicalApp
//
//  Created by Raphael Cerqueira on 25/08/20.
//  Copyright © 2020 Raphael Cerqueira. All rights reserved.
//

import SwiftUI

struct MenuView: View {
    @Binding var selectedItem: Int
    
    let items = ["Yesterday", "Today", "Timeline"]
    
    var body: some View {
        HStack {
            ForEach(0 ..< items.count) { i in
                Button(action: {
                    self.selectedItem = i
                }) {
                    Text(self.items[i].uppercased())
                        .font(Font.custom("DINCondensed-Bold", size: 28))
                        .foregroundColor(self.selectedItem == i ? Color(#colorLiteral(red: 0.3382192254, green: 0.3363170624, blue: 0.3843232393, alpha: 1)) : Color(#colorLiteral(red: 0.6670358777, green: 0.6662935615, blue: 0.6881061196, alpha: 1)))
                }
            }
        }
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView(selectedItem: .constant(0))
    }
}

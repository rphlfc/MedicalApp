//
//  ActivityView.swift
//  MedicalApp
//
//  Created by Raphael Cerqueira on 25/08/20.
//  Copyright © 2020 Raphael Cerqueira. All rights reserved.
//

import SwiftUI

struct ActivityView: View {
    @State var menuSelectedItem = 1
    @Binding var show: Bool
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Button(action: {
                    self.show = false
                }) {
                    Image(systemName: "arrow.left")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30)
                        .foregroundColor(Color(#colorLiteral(red: 0.3774251342, green: 0.375541389, blue: 0.4235603213, alpha: 1)))
                }
                
                Spacer()
            }
            
            TitleView(title: "Activity")
            
            MenuView(selectedItem: self.$menuSelectedItem)
                .padding(.top, 64)
                .padding(.leading, 16)
            
            LinearView()
            
            ActivityInfoView()
        }
        .padding()
        .navigationBarTitle("")
        .navigationBarHidden(true)
    }
}

struct ActivityView_Previews: PreviewProvider {
    static var previews: some View {
        ActivityView(show: .constant(false))
    }
}

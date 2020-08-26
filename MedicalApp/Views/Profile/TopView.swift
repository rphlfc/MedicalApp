//
//  NavigationView.swift
//  MedicalApp
//
//  Created by Raphael Cerqueira on 25/08/20.
//  Copyright © 2020 Raphael Cerqueira. All rights reserved.
//

import SwiftUI

struct TopView: View {
    var handleButton: () -> Void
    
    var body: some View {
        HStack {
            Button(action: {
                self.handleButton()
            }) {
                VStack(alignment: .leading) {
                    RoundedRectangle(cornerRadius: 20)
                        .frame(width: 30, height: 3)
                    
                    RoundedRectangle(cornerRadius: 20)
                        .frame(width: 15, height: 3)
                        .frame(height: 4)
                        .padding(.top, -2)
                }
                .foregroundColor(Color(#colorLiteral(red: 0.3774251342, green: 0.375541389, blue: 0.4235603213, alpha: 1)))
            }
            
            Spacer()
        }
    }
}

struct TopView_Previews: PreviewProvider {
    static var previews: some View {
        TopView {
            
        }
    }
}

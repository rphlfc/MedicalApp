//
//  StepsView.swift
//  MedicalApp
//
//  Created by Raphael Cerqueira on 26/08/20.
//  Copyright © 2020 Raphael Cerqueira. All rights reserved.
//

import SwiftUI

struct StepsView: View {
    var body: some View {
        HStack {
            Text("8640")
                .font(Font.custom("DINCondensed-Bold", size: 32))
                .foregroundColor(Color(#colorLiteral(red: 0.3382192254, green: 0.3363170624, blue: 0.3843232393, alpha: 1)))
            
            Text("STEPS OUT OF")
                .font(Font.custom("DINCondensed-Bold", size: 32))
                .foregroundColor(Color(#colorLiteral(red: 0.6708701253, green: 0.670298934, blue: 0.6877294183, alpha: 1)))
            
            Text("10000")
                .font(Font.custom("DINCondensed-Bold", size: 32))
                .foregroundColor(Color(#colorLiteral(red: 0.3382192254, green: 0.3363170624, blue: 0.3843232393, alpha: 1)))
        }
        .padding(.top, 16)
        .padding(.leading, 16)

    }
}

struct StepsView_Previews: PreviewProvider {
    static var previews: some View {
        StepsView()
    }
}

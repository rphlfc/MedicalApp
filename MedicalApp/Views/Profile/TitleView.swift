//
//  TitleView.swift
//  MedicalApp
//
//  Created by Raphael Cerqueira on 25/08/20.
//  Copyright © 2020 Raphael Cerqueira. All rights reserved.
//

import SwiftUI

struct TitleView: View {
    var title: String
    
    var body: some View {
        Text(title.uppercased())
            .font(Font.custom("DINCondensed-Bold", size: 36))
            .foregroundColor(Color(#colorLiteral(red: 0.3382192254, green: 0.3363170624, blue: 0.3843232393, alpha: 1)))
            .padding(.top, 64)
            .padding(.leading, 16)
    }
}

struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView(title: "Título")
    }
}

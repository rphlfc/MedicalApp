//
//  ActivityCardView.swift
//  MedicalApp
//
//  Created by Raphael Cerqueira on 26/08/20.
//  Copyright © 2020 Raphael Cerqueira. All rights reserved.
//

import SwiftUI

struct ActivityCardView: View {
    var imageName: String
    var title: String
    var subtitle: String
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Image(systemName: imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 20)
                    .foregroundColor(Color(#colorLiteral(red: 0.3382192254, green: 0.3363170624, blue: 0.3843232393, alpha: 1)))
                
                Text(title)
                    .font(Font.custom("DINCondensed-Bold", size: 42))
                    .foregroundColor(Color(#colorLiteral(red: 0.3382192254, green: 0.3363170624, blue: 0.3843232393, alpha: 1)))
                    .padding(.top)
                
                Text(subtitle)
                    .font(Font.custom("DINCondensed-Bold", size: 22))
                    .foregroundColor(Color(#colorLiteral(red: 0.6708701253, green: 0.670298934, blue: 0.6877294183, alpha: 1)))
            }
            
            Spacer()
                .frame(width: 60)
        }
        .padding(28)
        .background(Color(#colorLiteral(red: 0.9504752755, green: 0.9651560187, blue: 0.9691275954, alpha: 1)))
        .cornerRadius(20)
    }
}

struct ActivityCardView_Previews: PreviewProvider {
    static var previews: some View {
        ActivityCardView(imageName: "person", title: "Title", subtitle: "Subtitle")
    }
}

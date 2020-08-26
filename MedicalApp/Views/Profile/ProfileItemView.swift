//
//  CardView.swift
//  MedicalApp
//
//  Created by Raphael Cerqueira on 25/08/20.
//  Copyright © 2020 Raphael Cerqueira. All rights reserved.
//

import SwiftUI

struct ProfileItemView: View {
    var profileItem: ProfileItem
    @State var showDetail = false
    
    var body: some View {
        NavigationLink(destination: ActivityView(show: $showDetail), isActive: $showDetail) {
            HStack {
                ZStack {
                    Image(systemName: profileItem.imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 32)
                        .foregroundColor(profileItem.foregroundColor)
                }
                .frame(width: 70, height: 70)
                .background(profileItem.backgroundColor)
                .cornerRadius(15)
                
                VStack(alignment: .leading) {
                    Text(profileItem.title)
                        .font(Font.custom("DINCondensed-Bold", size: 24))
                        .foregroundColor(Color(#colorLiteral(red: 0.3382192254, green: 0.3363170624, blue: 0.3843232393, alpha: 1)))
                    
                    Text(profileItem.subtitle)
                        .font(.system(size: 16, weight: .medium))
                        .foregroundColor(Color(#colorLiteral(red: 0.6043848395, green: 0.6034598947, blue: 0.6296579242, alpha: 1)))
                        .padding(.top, 12)
                }
                .padding(.leading, 20)
                
                Spacer()
            }
            .padding(30)
            .background(Color.white)
            .cornerRadius(20)
        }
    }
}

struct ProfileItemView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileItemView(profileItem: ProfileItem(imageName: "heart.fill", foregroundColor: Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)), backgroundColor: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)), title: "TÏTULO", subtitle: "Subtitulo"))
    }
}

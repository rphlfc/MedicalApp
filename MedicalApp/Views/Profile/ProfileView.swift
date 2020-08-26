//
//  ProfileView.swift
//  MedicalApp
//
//  Created by Raphael Cerqueira on 25/08/20.
//  Copyright © 2020 Raphael Cerqueira. All rights reserved.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack(alignment: .leading) {
            TopView(handleButton: {})
            
            TitleView(title: "Personal Information")
            
            VStack(spacing: 20) {
                ForEach(profileData) { item in
                    ProfileItemView(profileItem: item)
                }
            }
            .padding(.top, 64)
            
            Spacer()
        }
        .padding()
        .navigationBarTitle("")
        .navigationBarHidden(true)
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

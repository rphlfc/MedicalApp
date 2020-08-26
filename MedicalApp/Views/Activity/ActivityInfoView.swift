//
//  ActivityInfoView.swift
//  MedicalApp
//
//  Created by Raphael Cerqueira on 25/08/20.
//  Copyright © 2020 Raphael Cerqueira. All rights reserved.
//

import SwiftUI

struct ActivityInfoView: View {
    var body: some View {
        VStack(alignment: .leading) {
            StepsView()
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 20) {
                    ForEach(infoData) { item in
                        ActivityCardView(imageName: item.imageName, title: item.title, subtitle: item.subtitle)
                    }
                }
                .padding(.horizontal, 16)
            }
            .padding(.top, 16)
        }
    }
}

struct ActivityInfoView_Previews: PreviewProvider {
    static var previews: some View {
        ActivityInfoView()
    }
}


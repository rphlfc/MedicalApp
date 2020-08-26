//
//  LinearView.swift
//  MedicalApp
//
//  Created by Raphael Cerqueira on 25/08/20.
//  Copyright © 2020 Raphael Cerqueira. All rights reserved.
//

import SwiftUI

struct LinearView: View {
    let barChartData = [140, 70, 210, 70, 140, 5, 210, 5, 210, 210, 5, 70, 140, 70, 210, 5, 5, 210, 210, 70, 5, 5, 5, 140, 5, 70, 210, 140, 210, 5, 5, 140, 140]
    
    var body: some View {
        HStack(alignment: .bottom, spacing: 6) {
            ForEach(0 ..< barChartData.count) { i in
                Capsule()
                    .frame(width: 4, height: CGFloat(self.barChartData[i]))
                    .foregroundColor(self.barChartData[i] == 140 ? Color(#colorLiteral(red: 0.9924792647, green: 0.8137274384, blue: 0.4324866533, alpha: 1)) : self.barChartData[i] == 70 ? Color(#colorLiteral(red: 0.8960953355, green: 0.3390086591, blue: 0.4001769423, alpha: 1)) : Color(#colorLiteral(red: 0.601195693, green: 0.8656678796, blue: 0.8749340773, alpha: 1)))
            }
        }
        .padding(.leading, 16)
        .padding(.top, 64)
        .animation(.spring())
    }
}

struct LinearView_Previews: PreviewProvider {
    static var previews: some View {
        LinearView()
    }
}

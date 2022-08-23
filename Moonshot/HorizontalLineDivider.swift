//
//  HorizontalLineDivider.swift
//  Moonshot
//
//  Created by RJ Tedoco on 8/23/22.
//

import SwiftUI

struct HorizontalLineDivider: View {
    var body: some View {
        Rectangle()
            .frame(height: 2)
            .foregroundColor(.lightBackground)
            .padding(.bottom)
    }
}

struct HorizontalLineDivider_Previews: PreviewProvider {
    static var previews: some View {
        HorizontalLineDivider()
    }
}

//
//  VerticalLabelStyle.swift
//  Memorize
//
//  Created by Dat on 07/02/2025.
//

import Foundation
import SwiftUI

struct VerticalLabelStyle: LabelStyle {
    func makeBody(configuration: Configuration) -> some View {
        VStack {
            configuration.icon
            configuration.title
        }
    }
}

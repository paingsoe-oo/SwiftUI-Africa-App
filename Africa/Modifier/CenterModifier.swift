//
//  CenterModifier.swift
//  Africa
//
//  Created by SoePaing on 25/11/2021.
//

import SwiftUI

struct CenterModifier: ViewModifier {
    
    func body(content: Content) -> some View {
        HStack {
            Spacer()
            content
            Spacer()
        }
    }
}

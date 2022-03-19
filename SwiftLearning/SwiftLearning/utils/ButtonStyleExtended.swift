//
//  ButtonStyleExtended.swift
//  SwiftLearning
//
//  Created by Tuấn Điệp on 19/03/2022.
//

import SwiftUI

struct RoundedRectangleButtonStyle: ButtonStyle {
    @State var labelColor: Color?
    @State var backgroundColor: Color?
    @State var radius: CGFloat?
  func makeBody(configuration: Configuration) -> some View {
    HStack {
      Spacer()
      configuration.label.foregroundColor(labelColor ?? .white)
      Spacer()
    }
    .padding()
    .background(backgroundColor?.cornerRadius(radius ?? 8) ?? Color.blue.cornerRadius(radius ?? 8))
    .scaleEffect(configuration.isPressed ? 0.98 : 1)
  }
}

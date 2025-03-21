//
//  ImageHolderView.swift
//  TuistDemoFramework
//
//  Created by Jonny Klemmer on 2/28/25.
//

import SwiftUI

public struct ImageHolderView: View {
    public init() { }

    public var body: some View {
        Image("happyCoffee", bundle: .module)
    }
}

#Preview {
    ImageHolderView()
}

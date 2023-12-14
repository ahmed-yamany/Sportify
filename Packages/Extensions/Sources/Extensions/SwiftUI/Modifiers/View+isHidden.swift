//
//  File.swift
//  
//
//  Created by Ahmed Yamany on 13/12/2023.
//

import SwiftUI

@available(iOS 13.0, *)

public extension View {
    /// Hide or show the view based on a boolean value.
    ///
    /// Example for visibility:
    ///
    ///     Text("Label")
    ///         .isHidden(true)
    ///
    /// - Parameters:
    ///   - hidden: Set to `false` to show the view. Set to `true` to hide the view.
    @ViewBuilder func isHidden(_ hidden: Bool) -> some View {
        if hidden {
            self.hidden()
            
        } else {
            self
        }
    }
}

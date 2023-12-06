//
//  View+devics.swift
//
//
//  Created by Ahmed Yamany on 05/12/2023.
//

import SwiftUI

@available(iOS 13.0, *)
public extension View {
    /// Conditionally applies a modifier to the view when running on iOS devices.
    ///
    /// - Parameter modifer: The modifier to apply.
    /// - Returns: A modified view if the current device is an iPhone.
    func iOS(_ modifer: (Self) -> some View) -> some View {
        return applyModifierIfNeeded(modifer, for: .phone)
    }

    /// Conditionally applies a modifier to the view when running on iPad devices.
    ///
    /// - Parameter modifer: The modifier to apply.
    /// - Returns: A modified view if the current device is an iPad.
    func iPadOS(_ modifer: (Self) -> some View) -> some View {
        return applyModifierIfNeeded(modifer, for: .pad)
    }

    /// Conditionally applies a modifier to the view when running on macOS devices.
    ///
    /// - Parameter modifer: The modifier to apply.
    /// - Returns: A modified view if the current device is a Mac.
    @available(iOS 14.0, *)
    func macOS(_ modifer: (Self) -> some View) -> some View {
        return applyModifierIfNeeded(modifer, for: .mac)
    }

    /// Conditionally applies a modifier to the view when running on tvOS devices.
    ///
    /// - Parameter modifer: The modifier to apply.
    /// - Returns: A modified view if the current device is an Apple TV.
    func tvOS(_ modifer: (Self) -> some View) -> some View {
        return applyModifierIfNeeded(modifer, for: .tv)
    }

    /// Conditionally applies a modifier to the view when running on CarPlay.
    ///
    /// - Parameter modifer: The modifier to apply.
    /// - Returns: A modified view if the current device is CarPlay.
    func carPlay(_ modifer: (Self) -> some View) -> some View {
        return applyModifierIfNeeded(modifer, for: .carPlay)
    }

    /// Conditionally applies a modifier to the view when running on iOS 17.0 and later with the Vision framework available.
    ///
    /// - Parameter modifer: The modifier to apply.
    /// - Returns: A modified view if the current device supports the Vision framework.
    @available(iOS 17.0, *)
    func vision(_ modifer: (Self) -> some View) -> some View {
        return applyModifierIfNeeded(modifer, for: .vision)
    }

    private func applyModifierIfNeeded(_ modifer: (Self) -> some View, for idiom: UIUserInterfaceIdiom) -> some View {
        if UIDevice.current.userInterfaceIdiom == idiom {
            return AnyView(modifer(self))
        }
        return AnyView(self)
    }
}

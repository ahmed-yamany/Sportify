//
//  File.swift
//  
//
//  Created by Ahmed Yamany on 21/10/2023.
//

import UIKit

extension UITextField {
    /// SwifterSwift: Add padding to the left of the textfield rect.
    ///
    /// - Parameter padding: amount of padding to apply to the left of the textfield rect.
    public func addPaddingLeft(_ padding: CGFloat) {
        leftView = createPaddingView(padding)
        leftViewMode = .always
    }
    /// SwifterSwift: Add padding to the right of the textfield rect.
    ///
    /// - Parameter padding: amount of padding to apply to the right of the textfield rect.
    public func addPaddingRight(_ padding: CGFloat) {
        rightView = createPaddingView(padding)
        rightViewMode = .always
    }
    //
    private func createPaddingView(_ padding: CGFloat) -> UIView {
        UIView(frame: CGRect(x: 0, y: 0, width: padding, height: frame.height))
    }
}

extension UITextField {
    /// Adds an image to the right side of the UITextField.
    ///
    /// - Parameters:
    ///   - image: The image to be displayed.
    ///   - tintColor: The color to apply to the image.
    public func addPaddingRightIcon(_ image: UIImage?, padding: CGFloat, tintColor: UIColor = .blue) {
        let view = createIconView(from: image, padding: padding, tintColor: tintColor)
        rightView = view
        rightViewMode = .always
    }
    /// Adds an image to the left side of the UITextField.
    ///
    /// - Parameters:
    ///   - image: The image to be displayed.
    ///   - tintColor: The color to apply to the image.
    public func addPaddingLeftIcon(_ image: UIImage?, padding: CGFloat, tintColor: UIColor) {
        let view = createIconView(from: image, padding: padding, tintColor: tintColor)
        //
        leftView = view
        leftViewMode = .always
    }
    //
    private func createIconView(from image: UIImage?, padding: CGFloat, tintColor: UIColor) -> UIView {
        let view = UIView()
        let imageView = UIImageView(image: image)
        //
        view.translatesAutoresizingMaskIntoConstraints = false
        imageView.translatesAutoresizingMaskIntoConstraints = false
        //
        imageView.tintColor = tintColor
        view.addSubview(imageView)
        //
        view.widthAnchor.constraint(equalToConstant: imageView.bounds.width + padding).isActive = true
        view.heightAnchor.constraint(equalTo: imageView.heightAnchor).isActive = true
        //
        //
        imageView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        return view
    }
}

//
//  File.swift
//  
//
//  Created by Ahmed Yamany on 20/11/2023.
//

import UIKit

@available(iOS 15.0, *)
public extension UIButton {
    func show(_ activityIndicator: UIActivityIndicatorView) {
        addSubview(activityIndicator)
        activityIndicator.hidesWhenStopped = true
        activityIndicator.translatesAutoresizingMaskIntoConstraints = false
        activityIndicator.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        configuration = nil
        // swiftlint: disable all
        activityIndicator.leadingAnchor.constraint(equalTo: titleLabel!.trailingAnchor, constant: 12).isActive = true
        // swiftlint: enable all
        activityIndicator.startAnimating()
    }
}
public extension UIActivityIndicatorView {
    func hide() {
        stopAnimating()
        removeFromSuperview()
    }
}

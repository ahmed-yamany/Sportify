//
//  Localizable.swift
//  Doctor-Appointment
//
//  Created by Ahmed Yamany on 11/11/2023.
//

import UIKit

public protocol Localizable {
    var localize: String { get }
}

extension UILabel: Localizable {
    @IBInspectable
    public var localize: String {
        get {
            text ?? ""
        } set {
            text = NSLocalizedString(newValue, comment: newValue)
        }
    }
}

extension UIButton: Localizable {
    @IBInspectable
    public var localize: String {
        get {
            titleLabel?.text ?? ""
        } set {
            let string = NSLocalizedString(newValue, comment: newValue)
            setTitle(string, for: .normal)
        }
    }
}

extension UITextField: Localizable {
    @IBInspectable
    public var localize: String {
        get {
            placeholder ?? ""
        } set {
            placeholder = NSLocalizedString(newValue, comment: newValue)
        }
    }
}

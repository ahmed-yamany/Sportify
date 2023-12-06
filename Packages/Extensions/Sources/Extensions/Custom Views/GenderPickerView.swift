//
//  GenderPickerView.swift
//
//  Created by Ahmed Yamany on 15/11/2023.
//

import UIKit

public struct Gender: RawRepresentable, Equatable, Hashable {
    public static let male = Gender(rawValue: NSLocalizedString("male", bundle: .module, comment: ""))
    public static let female = Gender(rawValue: NSLocalizedString("female", bundle: .module, comment: ""))

    public let rawValue: String

    public init(rawValue: String) {
        self.rawValue = rawValue
    }
    public static var allCases: [Gender] = [male, female]
}
//
open class GenderPickerView: UIPickerView {
    override public init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    required public init?(coder: NSCoder) {
        super.init(coder: coder)
        configure()
    }
    private func configure() {
        delegate = self
        dataSource = self
    }
    public func currentGender() -> Gender {
        let genderIndex = selectedRow(inComponent: 0)
        return Gender.allCases[genderIndex]
    }
}

extension GenderPickerView: UIPickerViewDataSource {
    public func numberOfComponents(in pickerView: UIPickerView) -> Int {
        1
    }
    public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        Gender.allCases.count
    }
}

extension GenderPickerView: UIPickerViewDelegate {
    public func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        Gender.allCases[row].rawValue
    }
}

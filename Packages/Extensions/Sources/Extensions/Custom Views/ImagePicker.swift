//
//  ImagePicker.swift
//  Doctor-Appointment
//
//  Created by Ahmed Yamany on 14/11/2023.
//

import UIKit
import Photos
import PhotosUI

@available(iOS 13.0, *)
public protocol ImagePickerDelegate: NSObjectProtocol {
    func userDidSelect(_ image: UIImage)
}
//
@available(iOS 14.0, *)
@IBDesignable
open class ImagePicker: UIView {
    // MARK: IBOutlet
    public private(set) var imageView: UIImageView = UIImageView()
    public private(set) var pickerButton: UIButton = UIButton()
    //
    // MARK: Properities
    @IBInspectable
    open var image: UIImage? {
        didSet {
            imageView.image = image
        }
    }
    @IBInspectable
    open var borderColor: UIColor? {
        didSet {
            imageView.layer.borderColor = borderColor?.cgColor
        }
    }
    ///
    @IBInspectable
    open var borderWidth: CGFloat = 0 {
        didSet {
            imageView.layer.borderWidth = borderWidth
        }
    }
    ///
    @IBInspectable
    open var pickerButtonIcon: UIImage? {
        didSet {
            pickerButton.setImage(pickerButtonIcon, for: .normal)
            pickerButton.tintColor = tintColor
        }
    }
    ///
    open weak var delegate: ImagePickerDelegate?
    // MARK: Init
    //
    override public init(frame: CGRect) {
        super.init(frame: frame)
        configureUI()
    }
    required public init?(coder: NSCoder) {
        super.init(coder: coder)
        configureUI()
    }
}
//
// MARK: - Configurations
@available(iOS 14.0, *)
private extension ImagePicker {
    func configureUI() {
        layoutImageView()
        layoutPickerButton()
    }
    ///
    func layoutImageView() {
        addSubview(imageView)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        //
        NSLayoutConstraint.activate([
            imageView.centerYAnchor.constraint(equalTo: centerYAnchor),
            imageView.centerXAnchor.constraint(equalTo: centerXAnchor),
            imageView.widthAnchor.constraint(equalToConstant: frame.height),
            imageView.heightAnchor.constraint(equalToConstant: frame.height)
        ])
        //
        imageView.contentMode = .scaleAspectFill
        imageView.layer.cornerRadius = frame.height / 2
        imageView.clipsToBounds = true
    }
    ///
    func layoutPickerButton() {
        addSubview(pickerButton)
        pickerButton.translatesAutoresizingMaskIntoConstraints = false
        let height = frame.height / 5.3
        //
        NSLayoutConstraint.activate([
            pickerButton.widthAnchor.constraint(equalToConstant: height),
            pickerButton.heightAnchor.constraint(equalToConstant: height),
            pickerButton.bottomAnchor.constraint(equalTo: imageView.bottomAnchor, constant: -height / 3),
            pickerButton.trailingAnchor.constraint(equalTo: imageView.trailingAnchor, constant: -height / 3)
        ])
        //
        pickerButton.addAction(UIAction { [unowned self] _ in
            pickerButtonAction()
        }, for: .touchUpInside)
        isUserInteractionEnabled = true
    }
}
//
// MARK: - Actions
@available(iOS 14.0, *)
private extension ImagePicker {
    @objc func pickerButtonAction() {
        var phConfiguration = PHPickerConfiguration(photoLibrary: .shared())
        //
        phConfiguration.selectionLimit = 1
        phConfiguration.filter = .images
        //
        let phPickerVC = PHPickerViewController(configuration: phConfiguration)
        phPickerVC.delegate = self
        //
        UIApplication.shared.topMostViewController()?.present(phPickerVC, animated: true)
    }
}
@available(iOS 14.0, *)
extension ImagePicker: PHPickerViewControllerDelegate {
    public func picker(_ picker: PHPickerViewController, didFinishPicking results: [PHPickerResult]) {
        picker.dismiss(animated: true)
        results.forEach { result in
            result.itemProvider.loadObject(ofClass: UIImage.self) { reading, error in
                guard let image = reading as? UIImage, error == nil else { return }
                DispatchQueue.main.async {
                    self.image = image
                    self.delegate?.userDidSelect(image)
                }
            }
        }
    }
}

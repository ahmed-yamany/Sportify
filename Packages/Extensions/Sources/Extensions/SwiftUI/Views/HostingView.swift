//
//  File.swift
//  
//
//  Created by Ahmed Yamany on 08/12/2023.
//

import SwiftUI

@available(iOS 13.0, *)
public struct HostingView: UIViewControllerRepresentable {
    public typealias UIViewControllerType = UIViewController
    
    public let controller: UIViewControllerType
    public init(controller: UIViewControllerType) {
        self.controller = controller
    }
    
    public func makeUIViewController(context: Context) -> UIViewControllerType {
        controller
    }
    
    public func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
    }
}

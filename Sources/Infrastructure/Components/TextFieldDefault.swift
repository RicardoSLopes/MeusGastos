//
//  TextFieldDefault.swift
//  MeusGastos
//
//  Created by Ricardo Santana on 17/05/22.
//

import Foundation
import UIKit

class TextFieldDefault: UITextField {
    //MARK: Constants
    let padding = UIEdgeInsets(top: 0, left: 15, bottom: 0, right: 0)
    
    init(placeHolder: String, keyBoardType: UIKeyboardType = .default) {
        super.init(frame: .zero)
        
        initDefault(placeHolder: placeHolder, keyBoardType: keyBoardType)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func initDefault(placeHolder: String, keyBoardType: UIKeyboardType) {
        self.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 0))
        self.leftViewMode = .always
        self.translatesAutoresizingMaskIntoConstraints = false
        self.layer.borderColor = UIColor.black.cgColor
        self.layer.borderWidth = 1
        self.backgroundColor = .lightGray
        self.placeholder = placeHolder
        self.keyboardType = keyBoardType
    }
    
// Código abaixo substituido pelo self.leftView do initDefault
//    //MARK: Add Padding in TextField
//    override open func textRect(forBounds bounds: CGRect) -> CGRect {
//        return bounds.inset(by: padding)
//    }
//
//    override open func placeholderRect(forBounds bounds: CGRect) -> CGRect {
//        return bounds.inset(by: padding)
//    }
//
//    override open func editingRect(forBounds bounds: CGRect) -> CGRect {
//        return bounds.inset(by: padding)
//    }
}

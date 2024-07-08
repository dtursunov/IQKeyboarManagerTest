//
//  DetailViewController.swift
//  TestKeyboard
//
//  Created by Diyor Tursunov on 08/07/24.
//

import UIKit


final class DetailViewController: UIViewController {
    
    private let label = UILabel()
    private let textField = UITextField()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        view.addSubview(label)
        
        label.frame = .init(
            origin: .init(x: 16, y: 100),
            size: .init(width: UIScreen.main.bounds.width - 32, height: 40)
        )
        label.textColor = .black
        label.text = "infinite looop test"
        
        
        view.addSubview(textField)
        textField.borderStyle = .roundedRect
        textField.frame = .init(
            origin: .init(x: 16, y: 160),
            size: .init(width: UIScreen.main.bounds.width - 32, height: 40)
        )
        textField.placeholder = "edit here"
        
    }

}

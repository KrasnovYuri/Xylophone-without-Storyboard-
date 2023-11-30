//
//  ViewController.swift
//  Xylophone (without Storyboard)
//
//  Created by Юрий on 30.11.2023.
//

import UIKit

class ViewController: UIViewController {
    
    private let nameButtons = ["C", "D", "E", "F", "G", "A", "B"]
    private let buttonStackView = UIStackView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setViews()
        setConstraints()
        buttonStackView.backgroundColor = .cyan
    }


}

extension ViewController {
    private func setViews() {
        view.addSubview(buttonStackView)
    }
    
    private func setConstraints() {
        buttonStackView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            buttonStackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            buttonStackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            buttonStackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            buttonStackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor)
        ])
    }
}

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
        createButtons()
    }
    
    private func createButtons() {
        for (index, nameButton) in nameButtons.enumerated() {
            let multiplierWidth = 0.97 - (0.03 * Double(index))
            createButton(name: nameButton, width: multiplierWidth)
        }
    }
    
    private func createButton(name: String, width: Double) {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle(name, for: .normal)
        button.addTarget(self, action: #selector(buttonsTapped), for: .touchUpInside)
        
        buttonStackView.addArrangedSubview(button)
        
        button.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: width).isActive = true
        button.heightAnchor.constraint(equalToConstant: 100).isActive = true
        button.backgroundColor = .red
    }
    
    @objc private func buttonsTapped(_ sender: UIButton) {
        print(sender.currentTitle)
    }


}

extension ViewController {
    private func setViews() {
        view.backgroundColor = .white
        view.addSubview(buttonStackView)
        buttonStackView.alignment = .center//Делаем по центру
        buttonStackView.axis = .vertical //Делаем стек вертикальным
        buttonStackView.spacing = 10
        buttonStackView.distribution = .fillEqually //Заполнение
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

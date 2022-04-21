//
//  SetupViewController.swift
//  GymGym
//
//  Created by Evgeny Mastepan on 19.04.2022.
//

import UIKit

class SetupViewController: UIViewController {

    var week = WeekData()
    static var currentWeek: String?
    
    private lazy var nameLabel: UILabel = {
        var nameLabel = UILabel()
        nameLabel.text = "Выбор недели."
        nameLabel.textAlignment = .center
        nameLabel.numberOfLines = 0
        nameLabel.font = UIFont.systemFont(ofSize: 30, weight: .thin)
        nameLabel.textColor = .systemTeal
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.backgroundColor = .white
//        nameLabel.layer.borderWidth = 2
//        nameLabel.layer.borderColor = UIColor.systemTeal.cgColor
        nameLabel.layer.cornerRadius = 15
        nameLabel.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
        nameLabel.clipsToBounds = true
        return nameLabel
    }()

    private lazy var setupPicker: UIPickerView = {
        var setupPicker = UIPickerView()
        setupPicker.translatesAutoresizingMaskIntoConstraints = false
        setupPicker.backgroundColor = .white
//        setupPicker.layer.borderWidth = 2
//        setupPicker.layer.borderColor = UIColor.systemTeal.cgColor
        setupPicker.layer.cornerCurve = CALayerCornerCurve.circular
        setupPicker.layer.cornerRadius = 20
        setupPicker.layer.maskedCorners = [.layerMaxXMaxYCorner, .layerMinXMaxYCorner]
        return setupPicker
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .systemGray5
        self.view.addSubview(nameLabel)
        self.view.addSubview(setupPicker)
        self.setupPicker.dataSource = self
        self.setupPicker.delegate = self

        let nameLabelConstraints = nameLabelConstraints()
        let pickerViewConstraints = pickerViewConstraints()
        NSLayoutConstraint.activate(
                                    nameLabelConstraints
                                  + pickerViewConstraints
                                    )
    }

    private func nameLabelConstraints() -> [NSLayoutConstraint] {
        let top = self.nameLabel.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 50)
        let bottom = self.nameLabel.heightAnchor.constraint(equalToConstant: 40)
        let left = self.nameLabel.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 30)
        let right = self.nameLabel.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -30)
        return ([top, bottom, left, right])
    }
    private func pickerViewConstraints() -> [NSLayoutConstraint] {
        let top = self.setupPicker.topAnchor.constraint(equalTo: self.nameLabel.bottomAnchor, constant: 5)
        let bottom = self.setupPicker.heightAnchor.constraint(equalToConstant: 150)
        let left = self.setupPicker.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 30)
        let right = self.setupPicker.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -30)
        return ([top, bottom, left, right])
    }



}


    extension SetupViewController: UIPickerViewDataSource, UIPickerViewDelegate {
        func numberOfComponents(in pickerView: UIPickerView) -> Int {
            return 1
        }

        func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
            return week.weeks.count
        }

        func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {

            let weekNumber = week.weeks[row]
            return weekNumber.name
        }

        func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
            if row == 0 {
//                SetupViewController.currentWeek = week.weeks[row]
            }

            if row == 1 {

            }
            if row == 2 {

            }
            if row == 3 {

            }
            if row == 4 {

            }

        }

}

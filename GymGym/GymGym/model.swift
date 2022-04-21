//
//  model.swift
//  GymGym
//
//  Created by Evgeny Mastepan on 19.04.2022.
//

import Foundation

struct weekNumber {
    var id: Int
    var name: String
}

class WeekData {
var weeks = [weekNumber]()
    init() {
        setupData()
    }

    func setupData() {
        let week1 = weekNumber(id: 1, name: "Тяжелая неделя")
        let week2 = weekNumber(id: 2, name: "Интенсивная неделя")
        let week3 = weekNumber(id: 3, name: "Средняя неделя")
        let week4 = weekNumber(id: 4, name: "Легкая неделя")
        let weekC = weekNumber(id: 5, name: "Кастомная неделя")
        weeks.append(week1)
        weeks.append(week2)
        weeks.append(week3)
        weeks.append(week4)
        weeks.append(weekC)
    }
}

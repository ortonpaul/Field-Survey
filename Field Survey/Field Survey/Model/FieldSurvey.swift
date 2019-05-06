//
//  FieldSurvey.swift
//  Field Survey
//
//  Created by Paul Orton on 5/6/19.
//  Copyright © 2019 Paul Orton. All rights reserved.
//

import Foundation

enum Classification: String, Codable {
    case amphibian
    case bird
    case fish
    case insect
    case mammal
    case plant
    case reptile
}

struct Observation: Codable {
    var classification: Classification
    var title: String
    var description: String
    var date: Date
}

struct Observations: Codable {
    var status: String
    var observations: [Observation]
}

//
//  FieldSurveyLoader.swift
//  Field Survey
//
//  Created by Paul Orton on 5/6/19.
//  Copyright © 2019 Paul Orton. All rights reserved.
//

import Foundation

class FieldSurveyLoader {
    
    class func load(jsonFileName: String) -> Observations? {
        var observations: Observations?
        let jsonDecoder = JSONDecoder()
        jsonDecoder.dateDecodingStrategy = .iso8601

        if let jsonFileUrl = Bundle.main.url(forResource: jsonFileName, withExtension: ".json"),
            let jsonData = try? Data(contentsOf: jsonFileUrl) {
                observations = try? jsonDecoder.decode(Observations.self, from: jsonData)
        }
        
        return observations
    }
}

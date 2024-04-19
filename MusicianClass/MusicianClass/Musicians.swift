//
//  Musicians.swift
//  MusicianClass
//
//  Created by erimhan on 19.04.2024.
//

import Foundation

enum MusicianType {
    case LeadGuitar
    case Vocalist
    case Drummer
    case Pianist
}

class Musicians {
    
    var name : String
    var age : Int
    var instrument : String
    var type : MusicianType
    
    //İnitializer (Constructor)
    init(name: String, age: Int, instrument: String, type: MusicianType) {
        self.name = name
        self.age = age
        self.instrument = instrument
        self.type = type
    }
    
    func sing(){

        print("Nothing else matters")
    }
    
    
}

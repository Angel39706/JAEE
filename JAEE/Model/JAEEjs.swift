//
//  JAEEjs.swift
//  JAEE
//
//  Created by Angel Martinez on 10/24/22.
//

import Foundation

struct JAEEjs : Decodable, Identifiable {
    let imageURL : String
    let price : Double
    let description : String
    let id : Int
    let name : String
}

struct JAEEResponse : Decodable {
    let request: [JAEEjs]
}

struct MockData {
    
    static let sampleJAEE = JAEEjs(imageURL: "",
                                   price: 9.99,
                                   description: "100% Shrink Free USA Cotton 220GSM  Cut,Sewn,Garment Dyed, & Printed in Los Angeles, CA",
                                   id: 0001, name: "SHIRT")
    
    static let JAEEs = [sampleJAEE,sampleJAEE,sampleJAEE]
    
    static let orderItemOne = JAEEjs(imageURL: "",
                                   price: 9.99,
                                   description: "100% Shrink Free USA Cotton 220GSM  Cut,Sewn,Garment Dyed, & Printed in Los Angeles, CA",
                                   id: 0001, name: "SHIRT1")
    static let orderItemTwo = JAEEjs(imageURL: "",
                                   price: 9.99,
                                   description: "100% Shrink Free USA Cotton 220GSM  Cut,Sewn,Garment Dyed, & Printed in Los Angeles, CA",
                                   id: 0002, name: "SHIRT2")
    static let orderItemThree = JAEEjs(imageURL: "",
                                   price: 9.99,
                                   description: "100% Shrink Free USA Cotton 220GSM  Cut,Sewn,Garment Dyed, & Printed in Los Angeles, CA",
                                   id: 0003, name: "SHIRT3")
    
    static let orderItems     = [orderItemOne,orderItemTwo,orderItemThree]
    
    
}

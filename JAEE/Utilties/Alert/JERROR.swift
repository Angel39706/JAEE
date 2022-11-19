//
//  JERROR.swift
//  JAEE
//  Adopted from Sean Allen Course
//  Created by Angel Martinez on 10/26/22.
//

import Foundation

//JERROR conforms to Error in NetworkManager file
enum JERROR: Error {
    case invalidURL
    case invalidResponse
    case invalidData
    case unableToComplete
}

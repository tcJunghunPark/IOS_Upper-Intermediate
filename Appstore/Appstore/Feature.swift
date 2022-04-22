//
//  Feature.swift
//  AppStore
//
//  Created by Junghun Park on 2022/04/22.
//

import Foundation

struct Feature: Decodable {
    let type: String
    let appName: String
    let description: String
    let imageURL: String
}

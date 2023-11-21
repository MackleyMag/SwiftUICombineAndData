//
//  FAQ.swift
//  SwiftUICombineAndData
//
//  Created by Mackley Magalhães da Silva on 17/11/23.
//

import Foundation

struct FAQ: Identifiable, Decodable {
    var id: Int
    var question: String
    var answer: String
}

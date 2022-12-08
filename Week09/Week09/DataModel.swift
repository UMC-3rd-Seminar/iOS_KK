//
//  DataModel.swift
//  Week09
//
//  Created by eunseo on 2022/11/24.
//let responseData = try? newJSONDecoder().decode(ResponseData.self, from: jsonData)

import Foundation

// MARK: - DataModel
struct DataModel: Decodable {
    let response: Response
}

// MARK: - Response
struct Response: Decodable {
    let header: Header
    let body: Body?
}

// MARK: - Body
struct Body: Decodable {
    let dataType: String
    let items: Items
    let pageNo, numOfRows, totalCount: Int
}

// MARK: - Items
struct Items: Decodable {
    let item: [Item]
}

// MARK: - Item
struct Item: Decodable {
    let baseDate, baseTime, category, fcstDate: String
    let fcstTime, fcstValue: String
    let nx, ny: Int
}

// MARK: - Header
struct Header: Decodable {
    let resultCode, resultMsg: String
}


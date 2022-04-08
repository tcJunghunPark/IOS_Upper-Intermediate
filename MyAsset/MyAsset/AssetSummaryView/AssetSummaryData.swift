//
//  AssetSummaryData.swift
//  MyAsset
//
//  Created by Junghun Park on 2022/04/08.
//

import SwiftUI

class AssetSummaryData: ObservableObject { //publiched, obervable은 class 에서만 사용가능
    @Published var assets: [Asset] = load("assets.json")
    }
func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil) else {
        fatalError(filename + "을 찾을 수 없습니다")
    }
    do {
        data = try Data(contentsOf: file)
    }catch {
        fatalError(filename + "을 찾을 수 없습니다")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    }catch {
        fatalError(filename + "을 \(T.self)로 파싱할 수 없습니다.")
    }
}

//
//  AssetSectionView.swift
//  MyAsset
//
//  Created by Junghun Park on 2022/04/08.
//

import SwiftUI

struct AssetSectionView: View {
    @ObservedObject var assetSection: Asset
    
    var body: some View {
        VStack(spacing: 20) {
            AssetSectionHeaderView(title: assetSection.type.title)
            ForEach(assetSection.data) { asset in
                HStack {
                    Text(asset.title)
                        .font(.title)
                        .foregroundColor(.secondary)
                    Spacer()
                    Text(asset.amount)
                        .font(.title2)
                        .foregroundColor(.primary)
                }
                Divider()
                
            }
        }
        .padding()
    }
}

struct AssetSectionView_Previews: PreviewProvider {
    static var previews: some View {
        let asset = Asset(id: 0, type: .bankAccount, data: [
        AssetData(id: 0, title: "신한은행", amount: "5,300,000"),
        AssetData(id: 1, title: "국민은행", amount: "8,450,000"),
        AssetData(id: 2, title: "기업은행", amount: "1,200,000"),
        AssetData(id: 3, title: "농협은행", amount: "100,000")])
        AssetSectionView(assetSection: asset)
    }
}

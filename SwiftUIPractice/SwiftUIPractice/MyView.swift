//
//  MyView.swift
//  SwiftUIPractice
//
//  Created by Junghun Park on 2022/03/28.
//

import SwiftUI

struct MyView: View {
    let helloFont : Font
    var body: some View {
        VStack {
            Text("Hello, World")
                .font(helloFont)
            Text("만나서 반가워요")
        }
       
    }
}

struct MyView_Previews: PreviewProvider {
    static var previews: some View {
        MyView(helloFont: .title)
    }
}

//
//  Singleton.swift
//  Singleton
//
//  Created by 又来薫 on 2017/07/02.
//  Copyright © 2017年 kaoru. All rights reserved.
//

import Foundation
import UIKit

class Singleton: NSObject {
    var data = Data(title: "", contents: "")

    static let sharedInstance: Singleton = Singleton()
    private override init() {}

    func saveTitle(title: String) {
        data.title = title
    }

    func saveContents(content: String) {
        data.contents = content
    }

    func getTitle() -> String {
        return data.title
    }

    func getContents() -> String {
        return data.contents
    }
}

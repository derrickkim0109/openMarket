//
//  ProductListEntity.swift
//  OpenMarket
//
//  Created by 데릭, 수꿍.
//

import UIKit

struct ProductListEntity {
    var productEntity: [ProductEntity]
}

struct ProductEntity: Hashable {
    let id: Int
    let vendorID: Int
    let thumbnail: String
    let name: String
    let currency: String
    let originalPrice: Double
    let discountedPrice: Double
    let stock: Int
}

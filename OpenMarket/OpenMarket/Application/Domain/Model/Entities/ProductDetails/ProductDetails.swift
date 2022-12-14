//
//  ProductDetails.swift
//  OpenMarket
//
//  Created by 데릭, 수꿍.
//

import UIKit

struct ProductDetails: Codable {
    let id: Int
    let vendorId: Int
    let name: String
    let description: String
    let thumbnail: String
    let currency: Currency
    let price: Double
    let bargainPrice: Double
    let discountedPrice: Double
    let stock: Int
    let images: [Images]
    let vendors: Vendor
    let createdAt: String
    let issuedAt: String
    
    var productImages: [UIImage]? {
        var array: [UIImage] = []
        
        for image in images {
            if let url = URL(string: image.url),
               let imageData = try? Data(contentsOf: url) {
                guard let uiImage = UIImage(data: imageData) else {
                    return nil
                }
                array.append(uiImage)
            }
        }
        return array
    }
}

struct Images: Codable {
    let id: Int
    let url: String
    let thumbnailUrl: String
    let succeed: Bool
    let issuedAt: String
}

struct Vendor: Codable {
    let name: String
    let id: Int
    let createdAt: String
    let issuedAt: String
}

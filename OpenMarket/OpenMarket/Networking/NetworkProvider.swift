//
//  NetworkProvider.swift
//  OpenMarket
//
//  Created by 케이, 수꿍 on 2022/07/12.
//

import Foundation

class NetworkProvider {
    var session: URLSessionProtocol
    
    init(session: URLSessionProtocol = URLSession.shared) {
        self.session = session
    }
    
    func requestAndDecode<T: Codable>(url: String, dataType: T.Type, completion: @escaping (Result<T,NetworkError>) -> Void) {
        guard let url = URL(string: url) else {
            return
        }
        
        session.dataTask(with: url) { data, response, error in
            if error != nil {
                completion(.failure(.unknownErrorOccured))
                return
            }
            
            guard let response = response as? HTTPURLResponse,
               (200..<300).contains(response.statusCode),
               let verifiedData = data else {
                return completion(.failure(.networkConnectionIsBad))
            }
            
            do {
                let decodedData = try JSONDecoder().decode(T.self, from: verifiedData)
                completion(.success(decodedData))
            } catch {
                completion(.failure(.failedToDecode))
            }
        }.resume()
    }
}

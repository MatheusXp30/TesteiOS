//
//  FundDetailWorker.swift
//  Santander-Test
//
//  Created by Matheus Ribeiro on 16/05/19.
//  Copyright (c) 2019 Matheus Ribeiro. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

class FundDetailWorker {
    
    func getFund(completion: @escaping (Fund?, Error?) -> Void) {
        let apiManager = FundsServiceApiManager.shared
        apiManager.getFundsList { (fundsList, error) in
            
            guard error == nil else {
                completion(nil, error)
                return
            }
            
            guard let fund = fundsList?.screen else {
                let domain = "Ocorreu um erro inesperado!"
                let responseError = NSError(domain: domain, code: 200, userInfo: nil)
                completion(nil, responseError)
                return
            }
            
            completion(fund, nil)
        }
    }
}
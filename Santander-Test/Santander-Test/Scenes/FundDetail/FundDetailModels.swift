//
//  FundDetailModels.swift
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

enum FundDetail {
    
    enum ErrorType {
        case getFundDetail
    }
    
    enum GetFundDetail {
        struct Request {}
        struct Response {
            let fund: Fund
        }
        struct ViewModel {
            let title: String
            let fundName: String
            let whatIs: String
            let definition: String
            let riskTitle: String
            let risk: Int?
            let infoTitle: String
            let moreInfo: FundMoreInfo?
            let info: [FundInfo]
            let downInfo: [FundInfo]
            let buttonMessage: String
            let buttonTopSpace: Int
        }
    }
    
    enum FundDetailError {
        struct Request {}
        struct Response {
            let error: NSError
            let errorType: ErrorType
        }
        struct ViewModel {
            let message: String
            let errorType: ErrorType
        }
    }
}

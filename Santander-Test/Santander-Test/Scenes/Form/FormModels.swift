//
//  FormModels.swift
//  Santander-Test
//
//  Created by Matheus Ribeiro on 14/05/19.
//  Copyright (c) 2019 Matheus Ribeiro. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

enum Form {
    
    enum ErrorType {
        case getFormCells
        case missingCells
    }
    
    enum GetFormCells {
        struct Request {}
        struct Response {
            let formCells: [FormCell]
        }
        struct ViewModel {
            struct DisplayViewModel {
                let type: Type
                let message: String?
                let typeField: TypeField?
                let hidden: Bool
                let topSpacing: Int
                let show: Int?
                let required: Bool
            }
            
            var displayedFormCells: [DisplayViewModel] = []
        }
    }
    
    enum FormError {
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
    
    enum Something {
        struct Request {
        }
        struct Response {
        }
        struct ViewModel {
        }
    }
}
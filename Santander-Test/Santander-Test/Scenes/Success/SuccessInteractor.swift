//
//  SuccessInteractor.swift
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

protocol SuccessBusinessLogic {
    
}

protocol SuccessDataStore
{
  //var name: String { get set }
}

class SuccessInteractor: SuccessBusinessLogic, SuccessDataStore
{
  var presenter: SuccessPresentationLogic?
  var worker: SuccessWorker?
  //var name: String = ""
}

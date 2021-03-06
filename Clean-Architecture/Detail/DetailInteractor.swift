//
//  DetailInteractor.swift
//  Clean-Architecture
//
//  Created by Surachat Yaitammasan on 21/9/2563 BE.
//  Copyright (c) 2563 Surachat Yaitammasan. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

protocol DetailBusinessLogic
{
  func doSomething(request: Detail.Something.Request)
}

protocol DetailDataStore
{
  var name: String { get set }
}

class DetailInteractor: DetailBusinessLogic, DetailDataStore
{
  var presenter: DetailPresentationLogic?
  var worker: DetailWorker?
  var name: String = ""
  
  // MARK: Do something
  
  func doSomething(request: Detail.Something.Request)
  {
    let response = Detail.Something.Response(name: name)
    presenter?.presentSomething(response: response)
  }
}

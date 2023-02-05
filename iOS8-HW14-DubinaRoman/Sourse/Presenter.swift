//
//  Presenter.swift
//  iOS8-HW14-DubinaRoman
//
//  Created by admin on 05.02.2023.
//

import Foundation

protocol PresenterProtocol {
    init(viewController: ViewControllerProtocol?, mockModel: MockModel)
    var model: [[Model]] { get }
}

class Presenter: PresenterProtocol {
    
    weak var viewController: ViewControllerProtocol?
    var model: [[Model]]
    private var mockModel: MockModel
    
    required init(viewController: ViewControllerProtocol?, mockModel: MockModel) {
        self.viewController = viewController
        self.mockModel = mockModel
        self.model = mockModel.getData()
    }
}

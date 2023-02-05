//
//  AssemblyModuleBuilder.swift
//  iOS8-HW14-DubinaRoman
//
//  Created by admin on 05.02.2023.
//

import UIKit

protocol AssemblyModuleBuilderProtocol {
    func createViewController() -> UIViewController
}

class AssemblyModuleBuilder: AssemblyModuleBuilderProtocol {
    func createViewController() -> UIViewController {
        let view = ViewController()
        let model = MockModel()
        let presenter = Presenter(viewController: view, mockModel: model)
        view.presenter = presenter
        return view
    }
}

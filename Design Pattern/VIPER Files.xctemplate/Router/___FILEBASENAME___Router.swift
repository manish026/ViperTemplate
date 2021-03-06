//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import Foundation
import UIKit

class ___VARIABLE_ModuleName___Router {

    // MARK: Properties

    weak var view: UIViewController?

    // MARK: Static methods

    static func setupModule() -> ___VARIABLE_ModuleName___ViewController {
        let viewController = UIStoryboard.loadViewController() as ___VARIABLE_ModuleName___ViewController
        let presenter = ___VARIABLE_ModuleName___Presenter()
        let router = ___VARIABLE_ModuleName___Router()
        let interactor = ___VARIABLE_ModuleName___Interactor()
        let dataManger = ___VARIABLE_ModuleName___DataManager()
        let networkManager = ___VARIABLE_ModuleName___NetworkManager()

        viewController.presenter =  presenter

        presenter.view = viewController
        presenter.router = router
        presenter.interactor = interactor

        router.view = viewController

        interactor.output = presenter
        interactor.dataManager = dataManger
        interactor.networkManager = networkManager
        
        dataManger.output = interactor
        
        networkManager.output = interactor

        return viewController
    }
}

extension ___VARIABLE_ModuleName___Router: ___VARIABLE_ModuleName___Wireframe {
    // TODO: Implement wireframe methods
}

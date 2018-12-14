//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import XCTest
@testable import ModuleName

class ___VARIABLE_ModuleName___Tests: XCTestCase {
    
    var controller: ___VARIABLE_ModuleName___Controller!
    
    var presenter: ___VARIABLE_ModuleName___Presenter!
    var router : ___VARIABLE_ModuleName___Router!
    var interactor : ___VARIABLE_ModuleName___Interactor!
    var dataManger : ___VARIABLE_ModuleName___DataManager!
    
    var dataExpectation: XCTestExpectation?
    var interactorExpectation: XCTestExpectation?
    var viewExpectation: XCTestExpectation?
    
    override func setUp() {
        
        controller = ___VARIABLE_ModuleName___Router.setupModule()
        presenter = ___VARIABLE_ModuleName___Presenter()
        interactor = ___VARIABLE_ModuleName___Interactor()
        dataManger = ___VARIABLE_ModuleName___DataManager()
        
        router = ___VARIABLE_ModuleName___Router()
        
        controller.presenter =  presenter
        
        presenter.view = self
        presenter.router = router
        presenter.interactor = interactor
        
        router.view = controller
        
        interactor.output = self
        interactor.dataManager = dataManger
        
        
        dataManger.output = self
        
        
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testControllerNotNil() {
        XCTAssertNotNil(controller)
    }
    
    func testPresenterNotNil() {
        XCTAssertNotNil(controller.presenter)
    }
    
    func testInteractorNotNil() {
        XCTAssertNotNil(presenter.interactor)
    }
    
    func testDataManagerNotNil() {
        XCTAssertNotNil(interactor.dataManager)
    }
    
    func testNetworkManagerNotNil() {
        XCTAssertNotNil(interactor.networkManager)
    }
    
}

extension ___VARIABLE_ModuleName___Tests : ___VARIABLE_ModuleName___InteractorOutput {
    
    
}

extension ___VARIABLE_ModuleName___Tests : ___VARIABLE_ModuleName___DataManagerOutputInterface {
    
    
}


extension ___VARIABLE_ModuleName___Tests : ___VARIABLE_ModuleName___View {
    
    
}


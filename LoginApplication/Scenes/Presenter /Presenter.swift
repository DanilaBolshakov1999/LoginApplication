//
//  Presenter.swift
//  LoginApplication
//
//  Created by Danila Bolshakov on 22.11.2023.
//

import UIKit

protocol PresenterProtocol: AnyObject {
    func viewDidLoad()
    func didTapLogin()
}

final class LoginPresenter: PresenterProtocol {

    weak var delegate: PresenterDelegate?
    
    func viewDidLoad() { }
    func didTapLogin() {
        <#code#>
    }
}

//
//  ViewController.swift
//  UnitTesting
//
//  Created by Jasmin Pethani on 20/04/18.
//  Copyright © 2018 Jasmin Pethani. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
	
	var Action = UIAlertAction.self
	
	override func viewDidLoad() {
		super.viewDidLoad()
	}
	
	override func viewDidAppear(_ animated: Bool) {
		super.viewDidAppear(animated)
		showAlert()
	}
	
	func showAlert() {
		let a = UIAlertController(title: "Ttile", message: "Message", preferredStyle: .alert)
		
		let okAction = Action.init(title: "OK", style: .default) { (action) in
			print("Ok button pressed")
			
		}
		
		let cancelAction = Action.makeActionWithTitle(title: "Cancel", style: .cancel) { (action) in
			print("Cancel button pressed")
		}
		
		a.addAction(okAction)
		a.addAction(cancelAction)

		present(a, animated: true, completion: nil)
	}
	
	func doSomething() {
		showAlert()
	}

}


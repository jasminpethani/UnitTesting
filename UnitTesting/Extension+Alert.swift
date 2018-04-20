//
//  Extension+Alert.swift
//  UnitTesting
//
//  Created by Jasmin Pethani on 20/04/18.
//  Copyright © 2018 Jasmin Pethani. All rights reserved.
//

import UIKit

extension UIAlertAction {
	class func makeActionWithTitle(title: String?, style: UIAlertActionStyle, handler: ((UIAlertAction) -> Void)?) -> UIAlertAction {
		return UIAlertAction(title: title, style: style, handler: handler)
	}
}




class HQAlertAction : UIAlertAction {
	
	typealias Handler = ((UIAlertAction) -> Void)
	var fireHandler: Handler?
	var _title: String?
	var _style: UIAlertActionStyle
	
	 init(title: String?, style: UIAlertActionStyle, handler: ((UIAlertAction) -> Void)?) {
		_title = title
		_style = style
		self.fireHandler = handler
	  super.init()
	}
	
	override init() {
		_style = .default
		super.init()
	}
	
//	class func makeActionWithTitle(title: String?, style: UIAlertActionStyle, handler: ((UIAlertAction) -> Void)?) -> HQAlertAction {
//		return HQAlertAction(title: title, style: style, handler: handler)
//	}
}

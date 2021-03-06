//
//  UIViewController + Extension.swift
//  ReseachRankingTask
//
//  Created by Pankaj Chauhan on 31/12/20.
//  Copyright © 2020 Pankaj Chauhan. All rights reserved.
//

import UIKit

extension UIViewController{

class func instantiateFromStoryboard(_ name: String = "Main") -> Self
{
    return instantiateFromStoryboardHelper(name)
}

fileprivate class func instantiateFromStoryboardHelper<T>(_ name: String) -> T
{
    let storyboard = UIStoryboard(name: name, bundle: nil)
    let controller = storyboard.instantiateViewController(withIdentifier: "\(Self.self)") as! T
    return controller
}


}

//
//  Extensions.swift
//  RickAndMorty
//
//  Created by Gerd Faedtke on 08.03.23.
//

import UIKit

extension UIView {
    func addSubviews(_ views: UIView...) {
        views.forEach({
            addSubview($0)
        })
    }
}


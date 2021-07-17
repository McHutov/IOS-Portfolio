//
//  String+AddText.swift
//  MyLocations
//
//  Created by Дастан Махутов on 15.07.2021.
//  Copyright © 2021 Razeware. All rights reserved.
//

import Foundation

extension String {
  mutating func add(text: String?, separatedBy separator: String = "") {
    if let text = text {
      if !isEmpty {
        self += separator
      }
      self += text
    }
  }
}

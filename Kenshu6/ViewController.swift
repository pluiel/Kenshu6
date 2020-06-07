//
//  ViewController.swift
//  Kenshu6
//
//  Created by Yuka Uematsu on 2020/06/07.
//  Copyright © 2020 Uematsu Well. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var skyArray: [Sky] = []
    
    
    @IBOutlet weak var question: UILabel!
    
    @IBOutlet weak var answer: UILabel!
    
    @IBOutlet weak var question1: UIButton!
    @IBOutlet weak var question2: UIButton!
    
    @IBOutlet weak var question3: UIButton!
    
    @IBOutlet weak var mae: UIButton!
    @IBOutlet weak var tugi: UIButton!
        var index: Int = 0
               

               override func viewDidLoad() {
                   super.viewDidLoad()
                   
                
                   skyArray.append(Sky(name: "晴れ"))
                   skyArray.append(Sky(name: "曇り"))
                   skyArray.append(Sky(name: "雨"))
                   SetUI()
               }
               

               func SetUI() {
                   question.text = skyArray[index].name
               }
                   
                 
                   class Sky {
                             var name: String!
                             init(name: String) {
                                 self.name = name
                             }
               }
                

               

               @IBAction func Mae() {
               index = index - 1
                   SetUI()
               }

               @IBAction func Tugi() {
               index = index + 1
                   SetUI()

           }
}


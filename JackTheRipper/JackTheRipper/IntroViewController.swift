//
//  IntroViewController.swift
//  JackTheRipper
//
//  Created by Danielle Inkster on 2019-11-27.
//  Copyright © 2019 Team6. All rights reserved.
//

import Foundation
import UIKit

class IntroViewController: UIViewController {
    
    @IBOutlet weak var bloodImg: UIImageView!
    
    //MARK: Properties
    @IBOutlet weak var TitleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bloodImg.alpha = 0.45
        // Do any additional setup after loading the view.
    }
    
    //MARK: Actions
    
    @IBAction func continueButton(_ sender: Any) {
        }
    }

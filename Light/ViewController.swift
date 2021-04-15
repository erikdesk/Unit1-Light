//
//  ViewController.swift
//  Light
//
//  Created by Erik Desk on 2021-04-15.
//

import UIKit

class ViewController: UIViewController {
    
    var indicator = 0
    //var lightOn = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
}

    func getColor() -> UIColor {
        switch indicator {
        case 0:
            return .black
        case 1:
            return .white
        case 2:
            return .orange
        case 3:
            return .blue
        default:
            fatalError()
        }
    }
    
    func updateUI() {
        view.backgroundColor = {
            switch indicator {
            case 0:
                return .black
            case 1:
                return .white
            case 2:
                return .orange
            case 3:
                return .blue
            default:
                fatalError()
            }
        }()
        //view.backgroundColor = getColor()
        //view.backgroundColor = lightOn ? .white : .black
    }
    
    @IBAction func buttonPressed(_ sender: Any) {
        //lightOn.toggle()
        indicator += indicator == 3 ? -3 : 1
        updateUI()
    }
    
}


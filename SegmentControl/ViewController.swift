//
//  ViewController.swift
//  SegmentControl
//
//  Created by Elliot Glaze on 19/09/2019.
//  Copyright © 2019 Elliot Glaze. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        setupSegment()
    }
    
    func setupSegment() {
        let items = ["Purple", "Green", "Blue"]
        let customSC = UISegmentedControl(items: items)
        customSC.selectedSegmentIndex = 0
        let frame = UIScreen.main.bounds
        customSC.frame = CGRect(x: frame.minX + 10, y: frame.minY + 50, width: frame.width - 20, height: frame.height*0.1)
        customSC.layer.cornerRadius = 5
        customSC.backgroundColor = .black
        customSC.tintColor = .white
        customSC.addTarget(self, action: #selector(handleColorChange), for: .valueChanged)
        view.addSubview(customSC)
    }
    
    @objc func handleColorChange(sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 1:
            view.backgroundColor = .green
        case 2:
            view.backgroundColor = .blue
        case 3:
            view.backgroundColor = .purple
        default:
            view.backgroundColor = .black
        }
    }


}


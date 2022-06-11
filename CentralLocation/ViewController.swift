//
//  ViewController.swift
//  CentralLocation
//
//  Created by 村中令 on 2022/06/11.
//

import UIKit

class ViewController: UIViewController {

    var array: [MyShapeLayer] = []
    @IBOutlet weak var uiview: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func leftxyLocation(_ sender: Any) {
        print(uiview.layer)
    }

    @IBAction func squereSize(_ sender: Any) {
        print(uiview.frame)

    }

    @IBAction func centerLocation(_ sender: Any) {
        let x = uiview.frame.origin.x + uiview.frame.width / 2
        let y = uiview.frame.origin.y + uiview.frame.height / 2
        print("(x,y)",(x,y))
     }

    @IBAction func showCircle(_ sender: Any) {
        let rect = uiview.frame
        let circle = MyShapeLayer()
        circle.frame = rect
        circle.drawOval(lineWidth: 1)
        array.append(circle)
        self.view.layer.addSublayer(circle)
    }

    @IBAction func removeCircle(_ sender: Any) {
        array.forEach { circle in
            circle.removeFromSuperlayer()
        }
    }
}


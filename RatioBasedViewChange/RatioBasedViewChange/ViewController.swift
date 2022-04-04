//
//  ViewController.swift
//  RatioBasedViewChange
//
//  Created by Nazmul on 04/04/2022.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var topView: UIView!
    
    @IBOutlet weak var playerView: UIView!
    
    @IBOutlet weak var playerViewHeightConstraint: NSLayoutConstraint!
    
    @IBOutlet weak var playerViewWidthConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func ratioChangedButtonAction(_ sender: UIButton) {
        switch sender.tag {
        case 1001:
            let rect = AVMakeRect(aspectRatio: CGSize(width: 3, height: 4), insideRect: topView.bounds)
            
            UIView.animate(withDuration: 0.4) {
                self.playerViewHeightConstraint.constant = rect.height
                self.playerViewWidthConstraint.constant = rect.width
                self.view.layoutIfNeeded()
            }
           
        default:
            let rect = AVMakeRect(aspectRatio: CGSize(width: 9, height: 16), insideRect: topView.bounds)
            UIView.animate(withDuration: 0.4) {
                self.playerViewHeightConstraint.constant = rect.height
                self.playerViewWidthConstraint.constant = rect.width
                self.view.layoutIfNeeded()
            }
        }
    }
    
}


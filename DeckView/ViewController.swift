//
//  ViewController.swift
//  DeckView
//
//  Created by Alexander Besson on 2016-04-12.
//  Copyright © 2016 Alexander Besson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var vwDeck: DeckViewCard!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        vwDeck = UINib(nibName: "DeckViewCard", bundle: nil).instantiateWithOwner(nil, options: nil)[0] as! DeckViewCard
        vwDeck.frame = CGRect(x: 20, y: 20, width: view.bounds.width - 40, height: view.bounds.height - 100)
        view.addSubview(vwDeck)
        
        vwDeck.blurImageView()
        vwDeck.roundSmallImageView()
    
    }
    
    @IBAction func btnTest(sender: AnyObject) {
        
        vwDeck.openImage()
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


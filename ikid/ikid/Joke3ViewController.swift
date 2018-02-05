//
//  Joke3ViewController.swift
//  ikid
//
//  Created by Andre Nguyen on 2/4/18.
//  Copyright © 2018 Andre Nguyen. All rights reserved.
//

import UIKit

class Joke3ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var jokeText: UILabel!
    @IBOutlet weak var changeButton: UIButton!
    let setup = "Dad, did you get shot in the army?"
    let punchLine = "No, son. I only got shot in the leggy."
    var onSetup = true
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBAction func changeButtonPressed(_ sender: Any) {
        if onSetup {
            jokeText.text = punchLine
            UIView.transition(with: jokeText, duration: 0.3, options: .transitionFlipFromRight, animations: nil, completion: nil)
            changeButton.setTitle("Back", for: .normal)
            onSetup = false
        } else {
            jokeText.text = setup
            UIView.transition(with: jokeText, duration: 0.3, options: .transitionFlipFromLeft, animations: nil, completion: nil)
            changeButton.setTitle("Next", for: .normal)
            onSetup = true
        }
    }
}

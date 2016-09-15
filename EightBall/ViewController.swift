//
//  ViewController.swift
//  EightBall
//
//  Created by John Malloy on 9/14/16.
//  Copyright © 2016 BigRedINC. All rights reserved.
//

import UIKit



let answers = ["\rYes", "\rNo","\rMaybe","I\rDon't\rKnow","Try\rAgain\rSoon","Read\rThe\rManual"]


class ViewController: UIViewController
{
    
    @IBOutlet var answerView: UITextView!

    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func fadeFortune()
    {
        UIView.animateWithDuration(0.75)
        {
            self.answerView.alpha = 0.0
        }
    }
    
    func newFortune()
    {
        let randomIndex = Int(arc4random_uniform(UInt32(answers.count)))
        answerView.text = answers[randomIndex];
        UIView.animateWithDuration(2.0)
        {
            self.answerView.alpha = 1.0
        }
    }
    
   override func motionBegan(motion: UIEventSubtype, withEvent event: UIEvent?)
    {
        if motion == .MotionShake
        {
            fadeFortune()
        }
    }
    
    
    override func motionEnded(motion: UIEventSubtype, withEvent event: UIEvent?)
    {
        if motion == .MotionShake
        {
            newFortune()
        }
    }
    
    override func motionCancelled(motion: UIEventSubtype, withEvent event: UIEvent?)
    {
        if motion == .MotionShake
        {
            newFortune()
        }
    }

}





















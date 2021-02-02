//
//  ViewController.swift
//  Roshambo
//
//  Created by Shane Hughes on 1/3/21.
//

import UIKit

class RoshamboViewControler: UIViewController {
    
    
    
    //All code: Instantiate the results view controller using the storyboard, and set the text of its label property. Connect the action on the rock button.
    @IBAction func Rock(_ sender: UIButton) {
        
        let playersChoice = 0
        _ = self.compareWithOpponentsPlay(playersChoice: playersChoice)
        //nstantiate the results view controller using the storyboard
        let controller: ResultsViewController
        controller = storyboard?.instantiateViewController(withIdentifier: "ResultsViewController") as! ResultsViewController
        
        func prepare(for segue: UIStoryboardSegue, sender: Any?){
            print("from prepare")

            if let controller = segue.destination as? ResultsViewController { controller.matchResults.text = "Hello World"
                                
            }
            
        }
        
        
        
        
        
        present(controller, animated: true, completion: nil)
        
        
    }
    //Perform Segue by Identifier: Create a named segue, and invoke the performSegueWithIdentifier method in the paper button action.
    //In this case, the label text should be set in the prepareForSegue method.
    @IBAction func Paper(_ sender: UIButton) {
        let playersChoice = 1
        _ = self.compareWithOpponentsPlay(playersChoice: playersChoice)
        print("hello")
        

        
        self.performSegue(withIdentifier: "DisplayView", sender: self)
        
        
    }
    //Automatically Triggered Segue: Create an automatically triggered segue in storyboard, connected directly to the scissors button. In this case, the label text should also be set in the prepareForSegue method.
    @IBAction func Scissors(_ sender: UIButton) {
        let playersChoice = 2
        _ = self.compareWithOpponentsPlay(playersChoice: playersChoice)
    }
    

 
    override func viewDidLoad() {
        super.viewDidLoad()
        
        

        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("world")
        if segue.identifier == "DisplayView" {
        print("it worked")

            
        }
    }

    //Randomly generate an opponent’s play i.e. rock, paper, or scissors.
    func compareWithOpponentsPlay(playersChoice: Int) -> Int{
    let computerChoice = Int.random(in: 0...2)
    
        switch computerChoice {
        //rock
        case 0:
            if computerChoice == playersChoice {
                print("playersChoice = 0 (Rock), computerChoice case = 0 (Rock) Rock vs. Rock, its a tie")
            } else if playersChoice == 1 {
                print("playersChoice = 1 (Paper), computerChoice = 0 (Rock) Paper vs. Rock, Paper Covers Rock, You Win!")
            } else {
                print("playersChoice = 2 (Scissors), computerChoice = 0 (Rock) Scissors vs Rock, Rock Crushes Scissors. You Lose")
            }
            //Paper
        case 1:
            if computerChoice == playersChoice {
                print("playersChoice = 1 (Paper), computerChoice = 1 (Paper) Paper vs Paper, its a tie")
            } else if playersChoice == 0 {
                print("playersChoice = 0 (Rock), computerChoice = 1 (Paper) Rock vs Paper, Paper Covers Rock. You Lose!")
            } else {
                print("playersChoice = 2 (Scissors), computerChoice = 1 (Paper) Scissors vs Paper, Scissors Cut Paper. You Win")
            }
        // Scissors
        case 2:
            if computerChoice == playersChoice {
                print("playersChoice = 2 (Scissors), computerChoice = 2 (Scissors) its a tie")
            } else if playersChoice == 0 {
                print("playersChoice = 0 (Rock), computerChoice = 2 (Scissors) Rock vs Scissors, Rock Crushes Scissors, You Win!")
            } else {
                print("playersChoice = 1 (Paper), computerChoice = 2 (Scissors) Paper vs Scissors, Scissors Cut Paper You Lose!")
            }
        default:
            print("default reached")
        }
        return computerChoice
    }
    
    //Compare the user’s play with the randomly generated play to determine a winner.
    func Compare(_: Int, playersChoice: Int){
        
        
    }
    
}


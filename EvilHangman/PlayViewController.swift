//
//  PlayViewController.swift
//  EvilHangman
//
//  Created by Ewoud Hermans on 30/11/15.
//  Copyright © 2015 Ewoud Hermans. All rights reserved.
//

import UIKit

class PlayViewController: UIViewController {

    var word: String?
    var letter: String?
    var wordArray = [Character]()
    var length : Int = 0
    var lengthCheck : Int = 0
    var answer: Array<Character> = Array(count: 10 , repeatedValue: "\t")
    var live = 10
    var imgInt = 0
    var selectedValue2: Int = 5
    var number: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view

        number = selectedValue2
    }
    
    @IBAction func makeWord(sender: AnyObject) {
        
        bottom.hidden = true
        horizontal.hidden = true
        vertical.hidden = true
        diagonal.hidden = true
        head.hidden = true
        chest.hidden = true
        arms.hidden = true
        legs.hidden = true
    
        let words: [String] = ["bomen", "struik", "wortels", "blad", "hars", "klimop", "barst","gebroken","vleugel","lantaarnpaal","fuitvliegje","omafiets","paashaas","bananen","heethoofd", "nerf", "stronk", "jaren", "hout", "hond", "balou", "loebas"]
        
        var wordsAfterCheck: [String] = []
        
        //print (selectedValue2)
        //print (number)
        
        for index in words {
        
            var current =  index
            lengthCheck = current.characters.count
            
        
            if lengthCheck < selectedValue2 + 1 {
                wordsAfterCheck.append(current)
            }
        }
        
        print (selectedValue2)
        
        var random = Int(arc4random_uniform(15))
    
        word = wordsAfterCheck[random]
        
        length = word!.characters.count
        
        wordLabel.text = ""

        answer = Array(count: length, repeatedValue: "*")
        
        let stringRepresentation = String(answer)
        
        wordLabel.text = stringRepresentation
        
        print(word)
    }
    
    func check () {
        
        var stringRepresentation : String?
        let searchCharacter: Character = letter![letter!.startIndex]
        let letter2 = Character(letter!)
        
        
        
//        if word == nil {
//            
//            wordLabel.text = "You have to tab play first"
//            return
//        }
//        
        if wordArray.contains(letter2) {
            
            var x = 0
            
            while x < wordArray.count {
                if wordArray[x] == searchCharacter {
                    answer.removeAtIndex(x)
                    answer.insert(searchCharacter, atIndex: x)
                    stringRepresentation = String(answer)
                    wordLabel.text = stringRepresentation
                }
                x = x + 1
            }
        }
    }
    
    
    
    
        func livesCount() {
            let letter2 = Character(letter!)
            wordArray = Array(word!.characters)
        
            if wordArray.contains(letter2) == false {
                live = live - 1
            
        
                switch imgInt {
                case 0:
                    bottom.hidden = false
                case 1:
                    horizontal.hidden = false
                case 2:
                    vertical.hidden = false
                case 3:
                    diagonal.hidden = false
                case 4:
                    head.hidden = false
                case 5:
                    chest.hidden = false
                case 6:
                    arms.hidden = false
                case 7:
                    legs.hidden = false
                default:
                    print ("wtf")
                }
            }
        lives.text = String(live)
        imgInt = imgInt + 1
            
    }
    


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var wordLabel: UILabel!
    
    @IBOutlet weak var lives: UILabel!
    
    
    @IBAction func A(sender: AnyObject) {
        letter = "a"
        check()
        livesCount()
    }
    @IBAction func B(sender: AnyObject) {
        letter = "b"
        check()
        livesCount()
    }
    @IBAction func C(sender: AnyObject) {
        letter = "c"
        check()
        livesCount()
    }
    @IBAction func D(sender: AnyObject) {
        letter = "d"
        check()
        livesCount()
    }
    @IBAction func E(sender: AnyObject) {
        letter = "e"
        check()
        livesCount()
    }
    @IBAction func F(sender: AnyObject) {
        letter = "f"
        check()
        livesCount()
    }
    @IBAction func G(sender: AnyObject) {
        letter = "g"
        check()
        livesCount()
    }
    @IBAction func H(sender: AnyObject) {
        letter = "h"
        check()
        livesCount()
    }
    @IBAction func I(sender: AnyObject) {
        letter = "i"
        check()
        livesCount()
    }
    @IBAction func J(sender: AnyObject) {
        letter = "j"
        check()
        livesCount()
    }
    @IBAction func K(sender: AnyObject) {
        letter = "k"
        check()
        livesCount()
    }
    @IBAction func L(sender: AnyObject) {
        letter = "l"
        check()
        livesCount()
    }
    @IBAction func M(sender: AnyObject) {
        letter = "m"
        check()
        livesCount()
    }
    @IBAction func N(sender: AnyObject) {
        letter = "n"
        check()
        livesCount()
    }
    @IBAction func O(sender: AnyObject) {
        letter = "o"
        check()
        livesCount()
    }
    @IBAction func P(sender: AnyObject) {
        letter = "p"
        check()
        livesCount()
    }
    @IBAction func Q(sender: AnyObject) {
        letter = "q"
        check()
        livesCount()
    }
    @IBAction func R(sender: AnyObject) {
        letter = "r"
        check()
        livesCount()
    }
    @IBAction func S(sender: AnyObject) {
        letter = "s"
        check()
        livesCount()
    }
    @IBAction func T(sender: AnyObject) {
        letter = "t"
        check()
        livesCount()
    }
    @IBAction func U(sender: AnyObject) {
        letter = "u"
        check()
        livesCount()
    }
    @IBAction func V(sender: AnyObject) {
        letter = "v"
        check()
        livesCount()
    }
    @IBAction func W(sender: AnyObject) {
        letter = "w"
        check()
        livesCount()
    }
    @IBAction func X(sender: AnyObject) {
        letter = "x"
        check()
        livesCount()
    }
    @IBAction func Y(sender: AnyObject) {
        letter = "y"
        check()
        livesCount()
    }
    @IBAction func Z(sender: AnyObject) {
        letter = "z"
        check()
        livesCount()
    }
    
    @IBOutlet weak var bottom: UIImageView!
    @IBOutlet weak var vertical: UIImageView!
    @IBOutlet weak var diagonal: UIImageView!
    @IBOutlet weak var horizontal: UIImageView!
    @IBOutlet weak var head: UIImageView!
    @IBOutlet weak var chest: UIImageView!
    @IBOutlet weak var arms: UIImageView!
    @IBOutlet weak var legs: UIImageView!
    
}

























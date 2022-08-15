//
//  ViewController.swift
//  LuckyHorse
//
//  Created by macbookair on 28.06.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var kazanan: UILabel!
    @IBOutlet weak var birinciAt: UIButton!
    @IBOutlet weak var ikinciAt: UIButton!
    @IBOutlet weak var baslat: UIButton!
    
    @IBOutlet weak var imgAt1: UIImageView!
    @IBOutlet weak var imgAt2: UIImageView!
    @IBOutlet weak var imgAt3: UIImageView!
    @IBOutlet weak var imgAt4: UIImageView!
    
    @IBOutlet weak var bitisAt1: UIImageView!
    @IBOutlet weak var img2At1: UIImageView!
    @IBOutlet weak var img2At2: UIImageView!
    @IBOutlet weak var img2At3: UIImageView!
    @IBOutlet weak var img2At4: UIImageView!
    
    
    @IBOutlet weak var bitisAt2: UIImageView!
    var horse1 : [UIImageView] = [UIImageView]()
    var horse2 : [UIImageView] = [UIImageView]()
    var finishİmage = [UIImageView]()
    var userChose : Int = Int()
    var choseHorse1 = false
    var choseHorse2 = false
    
    var birinciAtSayisi : Int = 0
    var ikinciAtSayisi : Int = 0
    var oyunSetSayisi : Int = 5
    var sayac = 0
    
    var birinciAtIndex = 1
    var ikinciAtIndex = 1
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        horse1 = [imgAt1,imgAt2,imgAt3,imgAt4]
        horse2 = [img2At1,img2At2,img2At3,img2At4]
        
        
        
        
        
        
    }

    @IBAction func firstHorseButton(_ sender: UIButton) {
        choseHorse1 = true
        ikinciAt.isEnabled = false
        baslat.isEnabled = true
        
        
    }
    
    
    @IBAction func secondHorseButton(_ sender: UIButton) {
        choseHorse2 = true
        birinciAt.isEnabled = false
        baslat.isEnabled = true
       
    }
    
    
    @IBAction func StartButton(_ sender: UIButton) {
        birinciAt.isEnabled = false
        ikinciAt.isEnabled = false
        baslat.isEnabled = false
        
        
        while sayac < oyunSetSayisi {
            
            let birinciAtSayisi : Int = Int.random(in: 1...100000)
            let ikinciAtSayisi : Int = Int.random(in: 1...100000)
            
            
            
            if birinciAtSayisi > ikinciAtSayisi {
                
                if birinciAtIndex == 1 {
                    horse1[1].image = UIImage(named: "yarisAti")
                    birinciAtIndex = birinciAtIndex + 1
                    sayac = sayac + 1
                }else if birinciAtIndex == 2 {
                    horse1[2].image = UIImage(named: "yarisAti")
                    birinciAtIndex = birinciAtIndex + 1
                    sayac = sayac + 1
                }else if birinciAtIndex == 3 {
                    horse1[3].image = UIImage(named: "yarisAti")
                    birinciAtIndex = birinciAtIndex + 1
                    sayac = sayac + 1
                    if choseHorse1 == true {
                        kazanan.text = "Birinci Atı Seçtiniz Kazanan 1. at tebrikler"
                    }else{
                        kazanan.text = "İkinci Atı Seçmiştiniz Kazanan 1. at"
                    }
                    break
                }
                
                
                
            }else if birinciAtSayisi == ikinciAtSayisi {
                oyunSetSayisi = oyunSetSayisi + 1
                
                
            }
            else if ikinciAtSayisi > birinciAtSayisi {
                if ikinciAtIndex == 1 {
                    horse2[1].image = UIImage(named: "yarisAti")
                    ikinciAtIndex = ikinciAtIndex + 1
                    sayac = sayac + 1
                }else if ikinciAtIndex == 2 {
                    horse2[2].image = UIImage(named: "yarisAti")
                    ikinciAtIndex = ikinciAtIndex + 1
                    sayac = sayac + 1
                }else if ikinciAtIndex == 3 {
                    horse2[3].image = UIImage(named: "yarisAti")
                    ikinciAtIndex = ikinciAtIndex + 1
                    sayac = sayac + 1
                    if choseHorse2 == true {
                        kazanan.text = "2. Atı Seçtiniz Kazanan 2. at tebrikler"
                    }else{
                        kazanan.text = "1. Atı Seçmiştiniz Kazanan 2. at"
                    }
                    break
                }
                
            }
             if ikinciAtIndex == 3 && birinciAtIndex == 3 {
                kazanan.text = "Atlar berabere kaldı"
            }
            
        }
        
        
    }
    
    
    
    
    
}


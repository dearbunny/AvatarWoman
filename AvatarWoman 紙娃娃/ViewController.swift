//
//  ViewController.swift
//  AvatarWoman 紙娃娃
//
//  Created by Rose on 2021/4/23.
//

import UIKit

class ViewController: UIViewController {

    
    // 切換View區塊
    @IBOutlet weak var glassesView: UIView!
    @IBOutlet weak var eyeView: UIView!
    @IBOutlet weak var dressView: UIView!
    @IBOutlet weak var shoesView: UIView!
    @IBOutlet weak var backgroundView: UIView!
    @IBOutlet weak var hairView: UIView!
    @IBOutlet weak var hairViewA: UIView!
    @IBOutlet weak var hairViewB: UIView!
    @IBOutlet weak var hairViewC: UIView!
    @IBOutlet weak var hairViewD: UIView!
    
    
    
    // 上方ImageView
    @IBOutlet weak var bgImageView: UIImageView!
    @IBOutlet weak var bodyImageView: UIImageView!
    @IBOutlet weak var eyeImageView: UIImageView!
    @IBOutlet weak var hairImageView: UIImageView!
    @IBOutlet weak var shoesImageView: UIImageView!
    @IBOutlet weak var dressImageView: UIImageView!
    @IBOutlet weak var glassesImageView: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hairView.isHidden = false
        hairViewA.isHidden = false
        hairViewB.isHidden = true
        hairViewC.isHidden = true
        hairViewD.isHidden = true
        glassesView.isHidden = true
        eyeView.isHidden = true
        dressView.isHidden = true
        shoesView.isHidden = true
        backgroundView.isHidden = true
    }
    
    // Scroll View 分類選單
    @IBAction func selectglasses(_ sender: UIButton) {
        hairView.isHidden = true
        glassesView.isHidden = false
        eyeView.isHidden = true
        dressView.isHidden = true
        shoesView.isHidden = true
        backgroundView.isHidden = true
    }
    @IBAction func selectEye(_ sender: UIButton) {
        hairView.isHidden = true
        glassesView.isHidden = true
        eyeView.isHidden = false
        dressView.isHidden = true
        shoesView.isHidden = true
        backgroundView.isHidden = true
    }
    @IBAction func selectDress(_ sender: UIButton) {
        hairView.isHidden = true
        glassesView.isHidden = true
        eyeView.isHidden = true
        dressView.isHidden = false
        shoesView.isHidden = true
        backgroundView.isHidden = true
    }
    @IBAction func selectShoes(_ sender: UIButton) {
        hairView.isHidden = true
        glassesView.isHidden = true
        eyeView.isHidden = true
        dressView.isHidden = true
        shoesView.isHidden = false
        backgroundView.isHidden = true
    }
    @IBAction func selectBackground(_ sender: UIButton) {
        hairView.isHidden = true
        glassesView.isHidden = true
        eyeView.isHidden = true
        dressView.isHidden = true
        shoesView.isHidden = true
        backgroundView.isHidden = false
    }
    @IBAction func selectHair(_ sender: UIButton) {
        hairView.isHidden = false
        glassesView.isHidden = true
        eyeView.isHidden = true
        dressView.isHidden = true
        shoesView.isHidden = true
        backgroundView.isHidden = true
    }
    // Scroll View 髮色子層選單
    @IBAction func selectHairA(_ sender: UIButton) {
        hairViewA.isHidden = false
        hairViewB.isHidden = true
        hairViewC.isHidden = true
        hairViewD.isHidden = true
    }
    @IBAction func selectHairB(_ sender: UIButton) {
        hairViewA.isHidden = true
        hairViewB.isHidden = false
        hairViewC.isHidden = true
        hairViewD.isHidden = true
    }
    @IBAction func selectHairC(_ sender: UIButton) {
        hairViewA.isHidden = true
        hairViewB.isHidden = true
        hairViewC.isHidden = false
        hairViewD.isHidden = true
    }
    @IBAction func selectHairD(_ sender: UIButton) {
        hairViewA.isHidden = true
        hairViewB.isHidden = true
        hairViewC.isHidden = true
        hairViewD.isHidden = false
    }
    
    
    // 換裝 Button
    @IBAction func changeHair(_ sender: UIButton) {
        let theImage = sender.currentImage
        hairImageView.image = theImage
    }
    @IBAction func changeGlasses(_ sender: UIButton) {
        let theImage = sender.currentImage
        glassesImageView.image = theImage
        // 清除眼鏡
        if theImage?.isSymbolImage == true {
            glassesImageView.image = nil
        }
    }
    @IBAction func changeEye(_ sender: UIButton) {
        let theImage = sender.currentImage
        eyeImageView.image = theImage
    }
    @IBAction func changeDress(_ sender: UIButton) {
        let theImage = sender.currentImage
        dressImageView.image = theImage
    }
    
    @IBAction func changeShoes(_ sender: UIButton) {
        let theImage = sender.currentImage
        shoesImageView.image = theImage
        // 清除鞋子
        if theImage?.isSymbolImage == true {
            shoesImageView.image = nil
        }
    }
    
    @IBAction func changeBackground(_ sender: UIButton) {
        let theImage = sender.currentImage
        bgImageView.image = theImage
    }
    
    // 隨機亂數
    // 物件
    let bgImage:[UIImage?] = [UIImage(named: "backgroung-1.jpg"),
                              UIImage(named: "backgroung-2.jpg"),
                              UIImage(named: "backgroung-3.jpg"),
                              UIImage(named: "backgroung-4.jpg"),
                              UIImage(named: "backgroung-5.jpg"),
                              UIImage(named: "backgroung-6.jpg"),
                              UIImage(named: "backgroung-7.jpg"),
                              UIImage(named: "backgroung-8.jpg"),
                              UIImage(named: "backgroung-9.jpg"),
                              UIImage(named: "backgroung-10.jpg")]
    let eyeImage:[UIImage?] = [UIImage(named: "Eyes 1"),UIImage(named: "Eyes 2"),UIImage(named: "Eyes 3"),UIImage(named: "Eyes 4"),UIImage(named: "Eyes 5"),UIImage(named: "Eyes 6")]
    let hairImage:[UIImage?] = [UIImage(named: "Hair 1A"),UIImage(named: "Hair 2A"),UIImage(named: "Hair 3A"),UIImage(named: "Hair 4A"),UIImage(named: "Hair 5A"),UIImage(named: "Hair 6A"),UIImage(named: "Hair 7A"),
                                UIImage(named: "Hair 1B"),UIImage(named: "Hair 2B"),UIImage(named: "Hair 3B"),UIImage(named: "Hair 4B"),UIImage(named: "Hair 5B"),UIImage(named: "Hair 6B"),UIImage(named: "Hair 7B"),
                                UIImage(named: "Hair 1C"),UIImage(named: "Hair 2C"),UIImage(named: "Hair 3C"),UIImage(named: "Hair 4C"),UIImage(named: "Hair 5C"),UIImage(named: "Hair 6C"),UIImage(named: "Hair 7C"),
                                UIImage(named: "Hair 1A"),UIImage(named: "Hair 2D"),UIImage(named: "Hair 3D"),UIImage(named: "Hair 4D"),UIImage(named: "Hair 5D"),UIImage(named: "Hair 6D"),UIImage(named: "Hair 7D")]
    // 沒有值加nil
    let shoesImage:[UIImage?] = [nil,UIImage(named: "Shoes 1"),UIImage(named: "Shoes 2"),UIImage(named: "Shoes 3"),UIImage(named: "Shoes 4"),UIImage(named: "Shoes 5"),UIImage(named: "Shoes 6"),UIImage(named: "Shoes 7"),UIImage(named: "Shoes 8"),UIImage(named: "Shoes 9")]
    
    let dressImage:[UIImage?] = [UIImage(named: "Dress 1"),UIImage(named: "Dress 2"),UIImage(named: "Dress 3"),UIImage(named: "Dress 4"),UIImage(named: "Dress 5"),UIImage(named: "Dress 6"),UIImage(named: "Dress 7"),UIImage(named: "Dress 8"),UIImage(named: "Dress 9"),UIImage(named: "Dress 10")]
    
    let glassesImage:[UIImage?] = [nil,UIImage(named: "Glasses 1"),UIImage(named: "Glasses 2"),UIImage(named: "Glasses 3")]
    
    // 亂數搭配
    @IBAction func selectRandom(_ sender: UIButton) {
        let number6 = Int.random(in: 0...5)
        let number4 = Int.random(in: 0...3)
        let number10 = Int.random(in: 0...9)
        let number28 = Int.random(in: 0...27)
        hairImageView.image = hairImage[number28]
        bgImageView.image = bgImage[number10]
        eyeImageView.image = eyeImage[number6]
        shoesImageView.image = shoesImage[number10]
        dressImageView.image = dressImage[number10]
        glassesImageView.image = glassesImage[number4]
        
        print(bgImageView.image)
    }
    
    
    
}


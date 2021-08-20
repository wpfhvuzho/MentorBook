//
//  ViewController.swift
//  MentorBook
//
//  Created by 高橋　龍 on 2021/08/18.
//

import UIKit

class ViewController: UIViewController {
    
    var mentorArray: [Mentor] = []
    
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var courseLabel: UILabel!
    
    var index: Int = 0
    
    func setUI() {
        //mentorArrayのIndex＝0にある文字列情報をイメージに変換
        //イメージに変換する際に使用しているメソッドは、MentorクラスにあるgetImage()
        imageView.image = mentorArray[index].getImage()
        nameLabel.text = mentorArray[index].name
        courseLabel.text = mentorArray[index].course
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        mentorArray.append(Mentor(name: "ながた", imageName: "nagata.jpg", course: "iPhone"))
        mentorArray.append(Mentor(name: "りょう", imageName: "ryo.jpg", course: "Unity"))
        mentorArray.append(Mentor(name: "たいてぃ", imageName: "taithi.jpg", course: "WebS,WebD"))
        
        setUI()
    }

    @IBAction func mae() {
        index -= 1
        if index < 0 {
            index = mentorArray.count - 1
        }
        setUI()
    }
    
    @IBAction func tugi() {
        index += 1
        if index > mentorArray.count - 1 {
            index = 0
        }
        setUI()
    }
}


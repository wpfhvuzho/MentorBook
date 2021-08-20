//
//  Mentor.swift
//  MentorBook
//
//  Created by 高橋　龍 on 2021/08/18.
//

import UIKit

class  Mentor {
    var name: String!
    var course: String!
    var imageName: String!
    
    init(name:String, imageName:String, course: String) {
        //このMentorクラス内の変数に直接代入している
        self.name = name
        self.imageName = imageName
        self.course = course
    }
    
    func getImage() -> UIImage {
        return UIImage(named: imageName)!
    }
}

//
//  ViewController.swift
//  Gesture
//
//  Created by SO YOUNG on 2018. 1. 6..
//  Copyright © 2018년 SO YOUNG. All rights reserved.
/*
 UIXXXGestureRecognizer 클래스: 제스처 인식
 1. 제스처가 발생했을 때 동작시킬 콜백함수 정의
 2. 제스처 객체에 콜백함수 연결
 3. 제스처 객체를 특정 뷰에 연결
 (이미지뷰와 같이 User Interaction Enabled 기본 속성 false인 경우가 있으므로 반드시 먼저 true 설정)
 */


//

import UIKit

class A: NSObject {
    @objc func arotaionHandler(gesture: UIRotationGestureRecognizer){
        
    }
}

class ViewController: UIViewController {

    @IBOutlet weak var imgRotation: UIImageView!
    @IBOutlet weak var imgLongPress: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let a = A()
        //let rotation = UIRotationGestureRecognizer(target: self, action: #selector(a.arotaionHandler(gesture:)))
        let rotation = UIRotationGestureRecognizer(target: self, action: #selector(rotationHandler(gesture:)))
        view.addGestureRecognizer(rotation)
        
        let pan = UIPanGestureRecognizer(target: self, action: #selector(panHandler(gesture:)))
        view.addGestureRecognizer(pan)
        
        let long = UILongPressGestureRecognizer(target: self, action: #selector(longPressHandler(gesture:)))
        imgLongPress.addGestureRecognizer(long) // Interaction 속성 true 설정!!!!
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(tapHandler(gesture:)))
        view.addGestureRecognizer(tap)
    }
    
    @objc func rotationHandler(gesture: UIRotationGestureRecognizer) {
        let transform = imgRotation.transform.rotated(by: gesture.rotation)
        imgRotation.layer.setAffineTransform(transform)
        gesture.rotation = 0
    }
    
    
    //드래그
    @objc func panHandler(gesture: UIPanGestureRecognizer) {
        
    }
    
    //롱프래스
    @objc func longPressHandler(gesture: UILongPressGestureRecognizer) {
         print("longPress")
    }
    
    //탭
    @objc func tapHandler(gesture: UITapGestureRecognizer) {
        print("tap")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}


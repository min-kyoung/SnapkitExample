//
//  ViewController.swift
//  Snapkit
//
//  Created by 노민경 on 2022/04/06.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    var uiView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .systemBackground
        
        let red = UIView()
        let blue = UIView()
        let green = UIView()
        
        [ red, blue, green ].forEach { self.view.addSubview($0) } // view에 red와 blue를 subView로 추가
        
        red.backgroundColor = .red
        blue.backgroundColor = .blue
        green.backgroundColor = .green
        
        red.snp.makeConstraints {
            $0.top.equalTo(150)
            $0.width.height.equalTo(250) // 너비, 높이 모두 250으로 설정한다.
            $0.centerX.equalToSuperview() // x축의 중심에 맞춘다.
        }

        blue.snp.makeConstraints {
            $0.width.height.equalTo(250)
            $0.top.equalTo(red.snp.bottom).inset(50)
            $0.leading.equalTo(red.snp.leading)
        }
        
        green.snp.makeConstraints {
//            $0.leading.top.trailing.bottom.equalToSuperview()
            $0.edges.equalToSuperview()
        }
    }
}


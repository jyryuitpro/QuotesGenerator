//
//  ViewController.swift
//  QuotesGenerator
//
//  Created by 류지영 on 2021/12/07.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var quoteLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    let quotes = [
        Quote(contents: "당신이 어려움을 겪고 항복하지 않기로 결정할 때, 그것이 힘이다.", name: "아놀드 슈왈제네거"),
        Quote(contents: "불가능을 하는 것은 좀 재미있다.", name: "월트 디즈니"),
        Quote(contents: "나보다 시작이 나은 선수들이 있겠지만, 나는 끝이 강한 선수다.", name: "우사인 볼트"),
        Quote(contents: "힘든 시간들은 절대로 오래가지 않지만, 강인한 사람들은 오래 간다.", name: "로버트 슐러"),
        Quote(contents: "나는 인생에서 몇 번이고 반복해서 실패했고 그것이 내가 성공하는 이유이다.", name: "마이클 조던"),
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tapQuoteGeneratorButton(_ sender: Any) {
        let random = Int(arc4random_uniform(5))
        let quote = quotes[random]
        self.quoteLabel.text = quote.contents
        self.nameLabel.text = quote.name
    }
}


//
//  ViewController.swift
//  CustomTabBar
//
//  Created by Bar P on 21/04/2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var contentView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        DispatchQueue.main.async {
            self.goToHome()
        }
    }
    
    func goToHome() {
        guard let Home = self.storyboard?.instantiateViewController(withIdentifier: "HomeViewController") as? HomeViewController else { return }
        contentView.addSubview(Home.view)
        Home.didMove(toParent: self)
    }
    
    func goToNewStudent() {
        guard let NewStudent = self.storyboard?.instantiateViewController(withIdentifier: "NewStudentViewController") as? NewStudentViewController else { return }
        contentView.addSubview(NewStudent.view)
        NewStudent.didMove(toParent: self)
    }
    
    func goToAbout() {
        guard let About = self.storyboard?.instantiateViewController(withIdentifier: "AboutViewController") as? AboutViewController else { return }
        contentView.addSubview(About.view)
        About.didMove(toParent: self)
    }
    
    @IBAction func onClickTabBar(_ sender: UIButton) {
        let tag = sender.tag
        print(tag)
        switch tag {
        case 1:
            goToHome()
        case 2:
            goToNewStudent()
        case 3:
            goToAbout()
        default:
            print("No Page Found")
        }
    }
}


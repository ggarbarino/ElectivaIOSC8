//
//  ViewController.swift
//  EjercicioClase8
//
//  Created by Diego Pais on 4/1/16.
//
//

import UIKit

class ViewController: UIViewController {

    let user1 = User (nombre: "Walter White", descripcion: "Descripcion de Walter White",nombreImagen: "img-profile")
    let user2 = User (nombre: "Amigo de Walter White", descripcion: "Descripcion del amio de Walter White",nombreImagen: "img-profile-2")
    
    var lstUsers: [User] = []
    
    @IBOutlet weak var profileImageView: UIImageView!

    @IBOutlet var userName: UILabel!
    @IBOutlet var userDescripcion: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        lstUsers.append(user1)
        lstUsers.append(user2)
    }

    override func viewWillAppear(animated: Bool) {
        
        super.viewWillAppear(animated)
        
        self.profileImageView.layer.cornerRadius = self.profileImageView.frame.size.width / 2.0
        self.profileImageView.layer.borderWidth = 2
        self.profileImageView.layer.borderColor = UIColor.whiteColor().CGColor
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonCambioUsuario(sender: AnyObject) {
       
        let numero = Int.randomFrom(0, to: lstUsers.count - 1)
        userName.text = lstUsers[numero].nombre
        userDescripcion.text = lstUsers[numero].descripcion
        profileImageView.image = UIImage(named: lstUsers[numero].nombreImagen)
    }
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return .LightContent
    }
}


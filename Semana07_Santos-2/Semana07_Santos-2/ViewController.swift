//
//  ViewController.swift
//  Semana07_Santos-2
//
//  Created by Tecsup on 27/04/26.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tablaPersonas: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tablaPersonas.delegate = self
        tablaPersonas.dataSource = self
    }
    
    var personasArreglo = ["Jaime Gomez", "Juan Leon", "Silvia Montoya", "Theo Diaz", "Elliot Garamendi"]
    var personasImagenarreglo = ["avatar1", "avatar3", "avatar2", "avatar4", "avatar1"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return personasArreglo.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! PersonasTableViewCell
        
        cell.PersonaNombre.text = personasArreglo[indexPath.row]
        cell.PersonaImagen.image = UIImage(named: personasImagenarreglo[indexPath.row])
        
        return cell
    }
}

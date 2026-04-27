//
//  ViewController.swift
//  Semana07_Santos
//
//  Created by Tecsup on 27/04/26.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tablaProfesores: UITableView!
    var listaProfesores = [
        Profesor(nombre: "Jaime Gomez", cargo: "Coordinador de Software",foto:UIImage(named: "avatar1")),
        Profesor(nombre: "Jaime Farfan", cargo: "Docente de Software TC",foto:UIImage(named: "avatar4")),
        Profesor(nombre: "Juan León", cargo: "Docente de Software TC",foto:UIImage(named: "avatar3")),
        Profesor(nombre: "Silvia Montoya", cargo: "Docente de Software TC",foto:UIImage(named: "avatar2")),
        Profesor(nombre: "Theobaldo Diaz", cargo: "Docente de Software TC",foto:UIImage(named: "avatar1")),
        Profesor(nombre: "Elliot Garamendi", cargo: "Docente de Software TC",foto:UIImage(named: "avatar3")),
        Profesor(nombre: "Edwin Huerto", cargo: "Docente de Software TC",foto:UIImage(named: "avatar4"))
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tablaProfesores.delegate = self
        tablaProfesores.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listaProfesores.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celda", for: indexPath)
        cell.textLabel?.text = listaProfesores[indexPath.row].nombre
        cell.detailTextLabel?.text = listaProfesores[indexPath.row].cargo
        cell.imageView?.image = listaProfesores[indexPath.row].foto!
        return cell
    }
}

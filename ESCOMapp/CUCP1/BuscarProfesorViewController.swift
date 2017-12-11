//
//  BuscarProfesorViewController.swift
//  ESCOMapp
//
//  Created by Alberto Garcia on 11/12/17.
//  Copyright © 2017 Alberto Garcia. All rights reserved.
//

import UIKit

class BuscarProfesorViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tvTableView: UITableView!
    
    var profesores = ["Ulises Vélez Saldaña", "Chadwick Carreto Arellano", "José Jaime López Rabadán", "José David Ortega Pacheco", "Hermes Fransisco Montes Casiano", "Nayeli Vega García", "Edgar Armando Catalán", "José Asunción Enríquez Zarate", "Euler Hernández Contreras", "Miguel Santiago Suárez Castañon"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tvTableView.dataSource = self
        self.tvTableView.delegate = self
        // Do any additional setup after loading the view.
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.profesores.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tvTableView.dequeueReusableCell(withIdentifier: "LabelCell", for: indexPath) as! ProfesorTableViewCell
        
        let profesor = profesores[indexPath.row]
        cell.lbProfesor.text = profesor
        cell.imFoto.image = UIImage(named: profesor)
        
        return cell
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}

class ProfesorTableViewCell: UITableViewCell {
    @IBOutlet weak var imFoto: UIImageView!
    @IBOutlet weak var lbProfesor: UILabel!
}


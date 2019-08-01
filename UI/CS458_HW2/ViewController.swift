
//
//  ViewController.swift
//  CS458_HW2
//
//  Created by Ayca Begum Tascioglu on 22.07.2019.
//  Copyright © 2019 Ayca Begum Tascioglu. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate,UIPickerViewDataSource {

    @IBOutlet weak var name_surname_label: UILabel!
    @IBOutlet weak var name_surname_textfield: UITextField!
    @IBOutlet weak var birth_date_label: UILabel!
    @IBOutlet weak var birth_date_datepicker: UIDatePicker!
    @IBOutlet weak var city_label: UILabel!
    @IBOutlet weak var city_picker: UIPickerView!
    var city_picker_data: [String] = [String]()
    
    @IBOutlet weak var gender_label: UILabel!
    @IBOutlet weak var gender_picker: UIPickerView!
    var gender_picker_data:[String] = [String]()
    
    @IBOutlet weak var occupation_label: UILabel!
    
    @IBOutlet weak var submit: UIButton!
    @IBOutlet weak var occupation_textarea: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
        self.city_picker.delegate = self
        self.city_picker.dataSource = self
        city_picker_data = [ "Adana", "Adiyaman","Afyonkarahisar", "Ağrı", "Amasya", "Ankara", "Antalya",  "Artvin",  "Aydın", "Balikesir",  "Bilecik",  "Bingöl",  "Bitlis",  "Bolu",  "Burdur",  "Bursa", "Çanakkale", "Çankırı", "Çorum",  "Denizli",  "Diyarbakır",  "Edirne", "Elazığ",  "Erzincan",  "Erzurum",  "Eskişehir", "Gaziantep",  "Giresun",  "Gümüşhane",  "Hakkari",  "Hatay",  "Isparta", "Mersin", "İstanbul", "İzmir", "Kars",  "Kastamonu","Kayseri", "Kırklareli",  "Kırşehir", "Kocaeli", "Konya",  "Kütahya",  "Malatya", "Manisa","Kahramanmaraş",  "Mardin",  "Muğla",  "Muş", "Nevşehir",  "Niğde",  "Ordu",  "Rize",  "Sakarya",  "Samsun","Siirt", "Sinop",  "Sivas",  "Tekirdağ",  "Tokat",  "Trabzon",  "Tunceli",  "Şanlıurfa",  "Uşak",  "Van", "Yozgat", "Zonguldak", "Aksaray",  "Bayburt",  "Karaman",  "Kırıkkale",  "Batman",  "Şırnak", "Bartın",  "Ardahan", "Iğdır", "Yalova","Karabük",  "Kilis","Osmaniye", "Düzce"]
        
        self.gender_picker.delegate = self
        self.gender_picker.dataSource = self
        gender_picker_data = [ "Female", "Male", "Other"]

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    // Number of columns of data
    /*
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    */
    // The number of rows of data
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if pickerView == city_picker{
        return city_picker_data.count
        }
        return gender_picker_data.count;
        
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    // The data to return fopr the row and component (column) that's being passed in
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if pickerView == city_picker{
        return city_picker_data[row]
        }
        return gender_picker_data[row];
    }
}

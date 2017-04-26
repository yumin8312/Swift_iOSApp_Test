//
//  ViewController.swift
//  ChooseTheOtherHalf
//
//  Created by yumin on 26/04/2017.
//  Copyright © 2017 YU MIN HUANG. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource{
    
    @IBOutlet weak var constellationPickView: UIPickerView!
    
    @IBOutlet weak var gender: UISegmentedControl!
    
    @IBOutlet weak var sports: UISwitch!
    
    @IBOutlet weak var age: UISlider!
    
    @IBOutlet weak var ageLabel: UILabel!
    
    @IBOutlet weak var resultImage: UIImageView!
    
    var constellation = "牡羊座 Aries"
    var ageNumber = 50  //default value
    
    @IBAction func ageSlider(_ sender: UISlider) {
        ageNumber = Int(sender.value)
        ageLabel.text = "\(ageNumber)"
    }
    
    @IBAction func gunButton(_ sender: UIButton) {
        if gender.selectedSegmentIndex == 0 && sports.isOn && ageNumber == 23 && constellation == "魔羯座 Capricorn" {
            resultImage.image = UIImage(named: "corn-inlove.png")
        } else {
            resultImage.image = UIImage(named: "corn-brokeheart.png")
        }
    }
    
    
    let constellationArr = ["牡羊座 Aries","金牛座 Taurus","雙子座 Gemini","巨蟹座 Cancer","獅子座 Leo","處女座 Virgo","天秤座 Libra","天蠍座 Scorpio","射手座 Sagittarius","魔羯座 Capricorn","水瓶座 Aquarius","雙魚座 Pisces"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        constellationPickView.delegate = self
        constellationPickView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    //MARK: - UIPickerView DataSource
    // pick view 要顯示的Components數量,eg.我僅需要顯示星座,所以只return 1
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    //要回傳Components內要顯示資料的數量
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return constellationArr.count
    }
    
    //MARK: - UIPickerView Delegate
    //要回傳Components內要顯示的資料
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return constellationArr[row]
    }
    //這裡是做pick view 若更動Row後所做的動作,eg.取得目前row的顯示資料
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        constellation = constellationArr[row]
    }

}


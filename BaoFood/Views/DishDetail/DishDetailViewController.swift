//
//  DishDetailViewController.swift
//  BaoFood
//
//  Created by GiaBao on 10/04/2023.
//

import UIKit
import ProgressHUD

class DishDetailViewController: UIViewController {
    
    var dish: Dish!
    @IBOutlet weak var dishImageView: UIImageView!
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var caloriesLbl: UILabel!
    @IBOutlet weak var descriptionLbl: UILabel!
    @IBOutlet weak var nameField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        populateView()
    }
    
    private func populateView() {
        dishImageView.kf.setImage(with: dish.image?.asUrl)
        titleLbl.text = dish.name
        descriptionLbl.text = dish.description
        caloriesLbl.text = dish.formattedCalories
    }
    
    @IBAction func placeOrderBtnClicked(_ sender: UIButton) {
        guard let name = nameField.text?.trimmingCharacters(in: .whitespaces),
              !name.isEmpty else {
                  ProgressHUD.showError("Please enter ur name")
                  return
              }
        ProgressHUD.show("Order....")
        NetworkService.shared.placeOrder(dishId: dish.id ?? "", name: name) { [weak self] (result) in
            switch result {
            case .success(_):
                ProgressHUD.showSuccess("Order success")
            case .failure(let error):
                ProgressHUD.showError(error.localizedDescription)
            }
        }
    }
    


}

//
//  ViewController.swift
//  Condition
//
//  Created by Roja on 01/11/22.
//

import UIKit

class ViewController: UIViewController {
    
//MARK: Outlets.
    @IBOutlet weak var WeatherImageView: UIImageView!
    @IBOutlet weak var cityNameLabel: UILabel!
    @IBOutlet weak var locationImageView: UIImageView!
    @IBOutlet weak var tempratureDescLabel: UILabel!
    @IBOutlet weak var weatherIconImageView: UIImageView!
    @IBOutlet weak var tempratureLabel: UILabel!
    
//MARK: Properties.
    var viewModel = WeatherViewModel()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
      //Load Configer Data.
        setupData()
    }
    
    private func setupData() {
        viewModel.getWeather { weather in
            setUpDataUI(Weather: weather)
        }
    }
    // Configer Data to UI.
    private func setUpDataUI(Weather: WeatherModel) {
        guard let tempratute = Weather.temprature,
              let cityName = Weather.cityName,
              let description = Weather.description else { return }
        tempratureLabel.text = "\(tempratute)" + "º" + "C"
        cityNameLabel.text = cityName
        tempratureDescLabel.text = description
        locationImageView.image = UIImage(systemName: "location")
        weatherIconImageView.image = UIImage(systemName: "cloud.drizzle")
    }

}


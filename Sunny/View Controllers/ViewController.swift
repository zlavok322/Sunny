//
//  ViewController.swift
//  Sunny
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var weatherIconImageView: UIImageView!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var feelsLikeTemperatureLabel: UILabel!
    
    
    var networkWeatherManager = NetworkWeatherManager()
    
    @IBAction func searchPressed(_ sender: UIButton) {
        self.presentSearchAlertController(withTitle: "Enter city name", message: nil, style: .alert) { [unowned self] city in
            self.networkWeatherManager.fetchCurrentWeather(forCity: city)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        networkWeatherManager.onCompletion = { [weak self] currentWeather in
            
        }
        networkWeatherManager.fetchCurrentWeather(forCity: "London")
    }
    
    func updateInterfaceWith(weather: CurrentWeather) {
        self.cityLabel.text = weather.cityName
        self.temperatureLabel.text = weather.temperatureString
        self.feelsLikeTemperatureLabel.text = weather.feelsLikeTemperatureString
        self.weatherIconImageView.image = UIImage(systemName: <#T##String#>)
    }
}


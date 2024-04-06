//
//  WeatherCollectionViewCell.swift
//  MyWeather
//
//  Created by Mustafa on 4/6/24.
//

import UIKit

class WeatherCollectionViewCell: UICollectionViewCell {
    
    static let identifer = "WeatherCollectionViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: "WeatherCollectionViewCell",
                     bundle: nil)
    }

    @IBOutlet var iconImageView: UIImageView!
    @IBOutlet var tempLabel: UILabel!
    
    func configure(with model: HourlyWeatherEntry) {
        self.tempLabel.text = "\(model.temperature)"
        self.iconImageView.contentMode = .scaleAspectFit
        self.iconImageView.image = UIImage(named: "clear")
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}

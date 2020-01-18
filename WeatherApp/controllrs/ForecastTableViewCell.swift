//
//  ForecastTableViewCell.swift
//  WeatherApp
//
//  Created by MacStudent on 2020-01-17.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class ForecastTableViewCell: UITableViewCell {

    @IBOutlet weak var datelbl: UILabel!
    @IBOutlet weak var timelbl: UILabel!
    @IBOutlet weak var hightemplbl: UILabel!
    @IBOutlet weak var lowtemplbl: UILabel!
    @IBOutlet weak var templbl: UILabel!
    @IBOutlet weak var feellbl: UILabel!
    @IBOutlet weak var iconImg: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
  func  setForecast(forecast: ForecastData)
    {
        datelbl.text = forecast.dateString
        timelbl.text = forecast.hour
        hightemplbl.text = forecast.highTemp
        lowtemplbl.text = forecast.lowTemp
        templbl.text = forecast.dayTemp
        feellbl.text = forecast.feelTemp
   //     iconImg.image =
        func loadImg(iconCode: String)
        {
            if let iconUrl = WeatherURLManager.getCityWeatherIcon(iconCode: iconCode)
            {
                let session = URLSession.shared
                let task = session.dataTask(with: iconUrl)
                {
                    (data,reponse, error) in
                    if let iconData = data
                    {
                        DispatchQueue.main.async {
                            self.iconImg.image = UIImage(data: data!)
                        }
                    }
                    
                }
                task.resume()
            }
        }
        
    }
}

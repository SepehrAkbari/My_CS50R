# Loading data
rail <- read.csv("rail.csv")
bus <- read.csv("bus.csv")

# Getting input
rc <- readline("Enter your route: ")

# Getting reliability
if (rc %in% rail$route) {
  peak <- rail[(rail$peak == "PEAK") & (rail$route == rc), ]
  offpeak <- rail[(rail$peak == "OFF_PEAK") & (rail$route == rc), ]

  peak$reliability <- round((peak$numerator / peak$denominator) * 100, 0)
  offpeak$reliability <- round((offpeak$numerator / offpeak$denominator) * 100, 0)

  print(paste("In peak hours: ",round(mean(peak$reliability), 0),"%",sep=""))
  print(paste("In off-peak hours: ",round(mean(offpeak$reliability), 0),"%",sep=""))
} else if (rc %in% bus$route){
  peak <- bus[(bus$peak == "PEAK") & (bus$route == rc), ]
  offpeak <- bus[(bus$peak == "OFF_PEAK") & (bus$route == rc), ]

  peak$reliability <- round((peak$numerator / peak$denominator) * 100, 0)
  offpeak$reliability <- round((offpeak$numerator / offpeak$denominator) * 100, 0)

  print(paste("In peak hours: ",round(mean(peak$reliability), 0),"%",sep=""))
  print(paste("In off-peak hours: ",round(mean(offpeak$reliability), 0),"%",sep=""))
} else {
  print("INVALID ROUTE.")
}

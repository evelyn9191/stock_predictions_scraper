# Stock Predictions Scraper
The script scrapes stock predictions from `www.walletinvestor.com` webpage. The list of scraped stocks contains all 
stocks available for ivesting for Standard users of Revolut, as valid on 19th November 2019. The list including 
the example predictions from 27th November 2019 are located in the `data` folder.

## Script logic
1. The script searches for the date when the latest predictions were scraped.
2. If the last scraping was done 14 or more days ago, the script starts scraping `www.walletinverstor.com` 
website for the newest predictions.
3. The new predictions are added to the `predictions.xlsx` file.
4. The output file is formatted (filters and conditional formatting rules are added).

The script makes 2 second intervals between web pages scraping, so the approximate duration of one scraping is 
7.5 minutes.
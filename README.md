# Stock Predictions Scraper
(This is an example of a scraper written in Python. It is not meant to be used in practice. Please read the Terms of Service
of the relevant services mentioned in this script.)

The script scrapes stock predictions from `www.walletinvestor.com` webpage and analysts recommendations from `www.nasdaq.com`.
The list of scraped stocks contains all stocks available for investing for Standard users of Revolut,
first as valid on 19th November 2019, then updated as valid on 25th December 2019.
The list including some predictions are located in the `data/predictions.xlsx`.

## Script logic

1. The script searches for the date when the latest predictions were scraped.
2. If the last scraping was done 29 or more days ago, the script starts scraping `www.walletinvestor.com`
website for the newest predictions and `www.nasdaq.com` for analysts recommendations.
3. The new predictions are added to the `predictions.xlsx` file.
4. The output file is formatted - filters and conditional formatting rules are added.

The script makes random intervals between web pages scraping, so the approximate duration of the scraping would be
between 40 and 150 minutes.

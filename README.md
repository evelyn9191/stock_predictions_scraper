# Stock Predictions Scraper
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

The script makes random intervals between web pages scraping, so the approximate duration of one scraping is
between 40 and 133 minutes for the predictions scraping and the consensus scraping each.

## Findings
The statistics on the accuracy of the predictions at `www.walletinvestor.com` based on the scraping of the website data
can be found in `data/predictions.xlsx`. Key findings of the analysis for 14d predictions on randomly chosen stocks:

1. for the higher ratings the platform tends to predict sometimes lower and sometimes higher improvement than the real one is,
2. for the lower ratings the platform tends to predict higher improvement that the real one is,
3. the platform predictions for 14 days differ significantly from the reality (+-22.20%)

No correlation was found between the predictions and the consensuses on Nasdaq webpage either.

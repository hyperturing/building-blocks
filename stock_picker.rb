def stock_picker(stock_prices)
    # set  initial buy/sell dates to the first and second days
    # set an initial current profit value based on the difference in stock prices between the days
    # loop through the start days
    #   loop through the end days
    #       if the profit found is higher then the current profit and if we're selling after our buy date
    #       set the current profit to the found profit
    #       set the new buy/sell dates

    stock_buy = {:buy_sell_dates => [0,1], :current_profit => stock_prices[1] - stock_prices[0]};

    for buy_date in (0..stock_prices.length - 1) do
        for sell_date in (1..stock_prices.length - 1) do
            found_profit = stock_prices[sell_date] - stock_prices[buy_date];
            if (found_profit > stock_buy[:current_profit] && buy_date < sell_date)
                stock_buy[:current_profit] = found_profit;
                stock_buy[:buy_sell_dates] = [buy_date, sell_date];
            end
        end
    end

    return stock_buy[:buy_sell_dates];
end

puts stock_picker([1,3,6,9,15,8,6,2,19])
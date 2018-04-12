require 'sinatra'
require_relative 'refactored_pizza.rb'

enable :sessions

get '/' do
	session[:total_price] = 0
	erb :welcome_page0
end

post '/on-to-size' do
	redirect '/size'
end

get '/size' do
	session[:pizza] = []
	erb :pizza_size_page1
end

post '/on-to-crust' do
	session[:pizza].push(params.values)
	redirect '/crust'
end

get '/crust' do
	erb :pizza_crust_page2
end

post '/on-to-meats' do
	session[:pizza].push(params.values)
	redirect '/meats'
end

get '/meats' do
	erb :meats_page3
end

post '/on-to-veggies' do
	session[:pizza].push(params.values)
	redirect '/veggies'
end

get '/veggies' do
	erb :veggies_page4
end

post '/on-to-special-toppings' do
	session[:pizza].push(params.values)
	redirect '/special-toppings'
end

get '/special-toppings' do
	erb :special_toppings_page5
end

post '/on-to-sauces' do
	session[:pizza].push(params.values)
	redirect '/sauces'
end

get '/sauces' do
	erb :sauces_page6
end

post '/on-to-extra-toppings' do
	session[:pizza].push(params.values)
	redirect '/extra-toppings'
end

get '/extra-toppings' do
	session[:pizza].push(params.values)
	erb :extra_toppings_page7
end

post '/on-to-salad' do
	session[:pizza].push(params.values)
	redirect '/salad'
end

get '/salad' do
	erb :salad_page8
end

post '/on-to-wings' do
	session[:pizza].push(params.values)
	redirect '/wings'
end

get '/wings' do
	erb :wings_page9
end

post '/on-to-drinks' do
	session[:pizza].push(params.values)
	redirect '/drinks'
end

get '/drinks' do
	erb :drinks_page10
end

post '/on-to-pasta' do
	session[:pizza].push(params.values)
	redirect '/pasta'
end

get '/pasta' do
	erb :pasta_page11
end

post '/on-to-almost-final' do
	session[:pizza].push(params.values)
	redirect '/almost-final'
end

get '/almost-final' do
	pizza = []
	session[:pizza]. each do |ingredients|
		ingredients.each do |string|
			pizza << string.split(", ") 
		end
	end
	session[:pizza] = pizza
	pizza = session[:pizza].flatten
	pizza.map! {|s| s[/[\d.,]+/] }
	pizza.each do |prices|
		session[:total_price] += prices.to_i
	end
	session[:total_price]
	erb :almost_final_page12
end

post '/on-to-final' do
	redirect '/final'
end

get '/final' do
	erb :final_page13, locals:{total_price: session[:total_price]}
end

post '/on-to-checkout' do
	session[:total_price] += params[:delivery?].to_i
	redirect "/checkout"
end

get '/checkout' do
	erb :checkout, locals:{total_price: session[:total_price]}
end

post '/on-to-thank-you' do
	redirect "/thanks"
end

get '/thanks' do
	erb :thanks.erb
end

get '/more-pizza' do
	session[:pizza].clear
	redirect "/size"
end

get '/news' do
	erb :news
end

get '/about' do
	erb :about
end

get '/contact' do
	erb :contact
end
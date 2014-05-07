require 'sinatra'
require '.expense.rb'

expenses = []

get '/' do
	erb :index
end

get '/new' do
	erb :new
end

post '/save' do
	expense = Expense.new(some_id, some_item, some_amount)
	expenses << expense
	redirect to '/'
end

get '/show/:id' do
	erb :show
end


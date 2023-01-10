class AccountsController < ApplicationController
    # gets all accounts and returns it as json
    get '/accounts' do
        accounts = Account.all
        accounts.to_json
    end
    
    # creates a new account with params and returns it as a json
    post '/accounts' do
        accounts = Account.create(
            first_name: params[:first_name],
            last_name: params[:last_name],
            email: params[:email],
            password: params[:password],
            confirm_password: params[:confirm_password]
        )
        accounts.to_json
    end
        
    # PATCH to update ... i'm not sure yet
    
    # deletes the account from the database
    delete '/accounts/:id' do
        accounts = Account.find(params[:id])
        accounts.destroy
        accounts.to_json
    end
end
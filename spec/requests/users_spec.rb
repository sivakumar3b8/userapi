require 'rails_helper'

RSpec.describe "Users", type: :request do

  before(:each) do 
    @user = User.create!(first_name: "first", last_name: "last", email: "sample@gmail.com")
  end

  #index action
  describe "GET /users" do
    it 'index action has status  code 200' do
      get "/users"
      expect(response).to have_http_status(200)
    end
  end


  #show action
  describe "GET /users/1" do
    it 'show action has status  code 200' do
      get "/users/#{@user.id}"
      expect(response).to have_http_status(200)
    end
  end

  #create action
  describe "POST /users" do
    it 'create action has status  code 200' do
      post '/users', params: {user: {first_name: "first", last_name: "last", email: "sample@gmail.com"} }
      expect(response).to have_http_status(201)
    end
  end

  #update action
  describe "PATCH/PUT /users/1" do
    it 'update action has status  code 200' do
      put "/users/#{@user.id}", params: {user: {first_name: "first", last_name: "last", email: "sample@gmail.com"} }
      expect(response).to have_http_status(200)
    end
  end

  #Delete action
  describe "/users/1" do
    it 'Destroy action has status  code 200' do
      delete "/users/#{@user.id}", params: {user: {first_name: "first", last_name: "last", email: "sample@gmail.com"} }
      expect(response).to have_http_status(204)
    end
  end
  
end
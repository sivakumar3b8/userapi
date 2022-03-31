require 'rails_helper'

RSpec.describe "Routing User", type: :routing do
    it "has route to Index action" do 
        expect(get("/users")).to route_to("users#index")
    end

    it "has route to Show action" do 
        expect(get("/users/1")).to route_to("users#show", id: "1")
    end
    
    it "has route to Create action" do 
        expect(post("/users")).to route_to("users#create")
    end

    it "has route to Update action" do 
        expect(put("/users/1")).to route_to("users#update", id: "1")
    end

    it "has route to Destroy action" do 
        expect(delete("/users/1")).to route_to("users#destroy", id: "1")
    end
end
RorProposal::Application.routes.draw do
  namespace :api do  
    resources :proposals, :defaults => { :format => :json }
  end  
end

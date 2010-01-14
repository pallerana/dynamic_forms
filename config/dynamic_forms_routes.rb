ActionController::Routing::Routes.draw do |map|
  map.resources :forms, :controller => 'dynamic_forms/forms' do |forms|
    forms.resources :form_submissions,
      :controller => "dynamic_forms/form_submissions",
      :only => [:index, :show, :new, :create]
  end
end
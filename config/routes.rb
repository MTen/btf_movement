BtfRails::Application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

# Since this application is using Tumblr as the CMS this will not be using RESTful routing.
# This application is also intentionally limited in routing capability to lower overall security 
# vulnerabilities.


# HOME
  root 'btf_movement#index'
# GET INFORMED
  get '/signs_and_symptoms' =>  'get_informed#signs_and_symptoms'
  get '/prevention_in_your_area' =>  'get_informed#prevention_in_your_area'
  get '/resources' => 'get_informed#resources'
  get '/statistics' => 'get_informed#statistics'

# THE BTF MOVEMENT

# HELP FIGHT ADDICTION

# ABOUT US

end

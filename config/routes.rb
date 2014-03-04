BtfRails::Application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

# Since this application is using Tumblr as the CMS this will not be using RESTful routing.
# This application is also intentionally limited in routing capability to lower overall security 
# vulnerabilities.


#HOME
  root 'btf_movement#index'

#GET INFORMED
  get '/signs_and_symptoms' =>  'get_informed#signs_and_symptoms'
  get '/prevention_in_your_area' =>  'get_informed#prevention_in_your_area'
  get '/resources' => 'get_informed#resources'
  get '/statistics' => 'get_informed#statistics'

#THE BTF MOVEMENT
	get '/medical_insurance' => 'btf_movement#medical_insurance'
	get '/judicial_system' => 'btf_movement#judicial_system'
	get '/long_term_recovery' => 'btf_movement#long_term_recovery'


#HELP FIGHT ADDICTION
	get '/calendar' => 'help#calendar'
	get '/volunteer' => 'help#volunteer'
	get '/donate' => 'help#donate'

#ABOUT US
	get '/founders_story' => 'about_us#founders_story'
	get '/contact' => 'about_us#contact'

end

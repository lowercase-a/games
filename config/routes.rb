Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"
  get '/fortunes' => 'api/examples#show_the_fortune'
  get '/lotto' => 'api/examples#lottery'
end

Rails.application.routes.draw do

	match 'menu' => 'mail#menu', :via => [:get, :post]

	match 'autoReply' => 'mail#autoReply', :via => [:get, :post]

        match 'complete' => 'mail#complete', :via => [:get, :post]

	match 'list' => 'mail#list', :via => [:get, :post]

	match 'destroy/:id' => 'mail#destroy', :via => [:get, :post]

	root 'mail#menu'

end

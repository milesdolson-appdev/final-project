Rails.application.routes.draw do
  # devise_for :users
  
  match("/", { :controller => "locations", :action => "recent", :via => "get" })
  match("/users/:user_id/feed", { :controller => "userfeed", :action => "user_feed", :via => "get" })
    
  # # Routes for the Category resource:

  # # CREATE
  # get("/categories/new", { :controller => "categories", :action => "new_form" })
  # post("/create_category", { :controller => "categories", :action => "create_row" })

  # # READ
  # get("/categories", { :controller => "categories", :action => "index" })
  # get("/categories/:id_to_display", { :controller => "categories", :action => "show" })

  # # UPDATE
  # get("/categories/:prefill_with_id/edit", { :controller => "categories", :action => "edit_form" })
  # post("/update_category/:id_to_modify", { :controller => "categories", :action => "update_row" })

  # # DELETE
  # get("/delete_category/:id_to_remove", { :controller => "categories", :action => "destroy_row" })

  # #------------------------------

  # # Routes for the Bookmark resource:

  # # CREATE
  # get("/bookmarks/new", { :controller => "bookmarks", :action => "new_form" })
  # post("/create_bookmark", { :controller => "bookmarks", :action => "create_row" })

  # # READ
  # get("/bookmarks", { :controller => "bookmarks", :action => "index" })
  # get("/bookmarks/:id_to_display", { :controller => "bookmarks", :action => "show" })

  # # UPDATE
  # get("/bookmarks/:prefill_with_id/edit", { :controller => "bookmarks", :action => "edit_form" })
  # post("/update_bookmark/:id_to_modify", { :controller => "bookmarks", :action => "update_row" })

  # # DELETE
  # get("/delete_bookmark/:id_to_remove", { :controller => "bookmarks", :action => "destroy_row" })

  # #------------------------------

  # # Routes for the Address resource:

  # # CREATE
  # get("/addresses/new", { :controller => "addresses", :action => "new_form" })
  # post("/create_address", { :controller => "addresses", :action => "create_row" })

  # # READ
  # get("/addresses", { :controller => "addresses", :action => "index" })
  # get("/addresses/:id_to_display", { :controller => "addresses", :action => "show" })

  # # UPDATE
  # get("/addresses/:prefill_with_id/edit", { :controller => "addresses", :action => "edit_form" })
  # post("/update_address/:id_to_modify", { :controller => "addresses", :action => "update_row" })

  # # DELETE
  # get("/delete_address/:id_to_remove", { :controller => "addresses", :action => "destroy_row" })

  # #------------------------------

  # # Routes for the Plug availability resource:

  # # CREATE
  # get("/plug_availabilities/new", { :controller => "plug_availabilities", :action => "new_form" })
  # post("/create_plug_availability", { :controller => "plug_availabilities", :action => "create_row" })

  # # READ
  # get("/plug_availabilities", { :controller => "plug_availabilities", :action => "index" })
  # get("/plug_availabilities/:id_to_display", { :controller => "plug_availabilities", :action => "show" })

  # # UPDATE
  # get("/plug_availabilities/:prefill_with_id/edit", { :controller => "plug_availabilities", :action => "edit_form" })
  # post("/update_plug_availability/:id_to_modify", { :controller => "plug_availabilities", :action => "update_row" })

  # # DELETE
  # get("/delete_plug_availability/:id_to_remove", { :controller => "plug_availabilities", :action => "destroy_row" })

  # #------------------------------

  # # Routes for the Internet quality resource:

  # # CREATE
  # get("/internet_qualities/new", { :controller => "internet_qualities", :action => "new_form" })
  # post("/create_internet_quality", { :controller => "internet_qualities", :action => "create_row" })

  # # READ
  # get("/internet_qualities", { :controller => "internet_qualities", :action => "index" })
  # get("/internet_qualities/:id_to_display", { :controller => "internet_qualities", :action => "show" })

  # # UPDATE
  # get("/internet_qualities/:prefill_with_id/edit", { :controller => "internet_qualities", :action => "edit_form" })
  # post("/update_internet_quality/:id_to_modify", { :controller => "internet_qualities", :action => "update_row" })

  # # DELETE
  # get("/delete_internet_quality/:id_to_remove", { :controller => "internet_qualities", :action => "destroy_row" })

  # #------------------------------

  # # Routes for the Noise level resource:

  # # CREATE
  # get("/noise_levels/new", { :controller => "noise_levels", :action => "new_form" })
  # post("/create_noise_level", { :controller => "noise_levels", :action => "create_row" })

  # # READ
  # get("/noise_levels", { :controller => "noise_levels", :action => "index" })
  # get("/noise_levels/:id_to_display", { :controller => "noise_levels", :action => "show" })

  # # UPDATE
  # get("/noise_levels/:prefill_with_id/edit", { :controller => "noise_levels", :action => "edit_form" })
  # post("/update_noise_level/:id_to_modify", { :controller => "noise_levels", :action => "update_row" })

  # # DELETE
  # get("/delete_noise_level/:id_to_remove", { :controller => "noise_levels", :action => "destroy_row" })

  # #------------------------------

  # # Routes for the Ambience resource:

  # # CREATE
  # get("/ambiences/new", { :controller => "ambiences", :action => "new_form" })
  # post("/create_ambience", { :controller => "ambiences", :action => "create_row" })

  # # READ
  # get("/ambiences", { :controller => "ambiences", :action => "index" })
  # get("/ambiences/:id_to_display", { :controller => "ambiences", :action => "show" })

  # # UPDATE
  # get("/ambiences/:prefill_with_id/edit", { :controller => "ambiences", :action => "edit_form" })
  # post("/update_ambience/:id_to_modify", { :controller => "ambiences", :action => "update_row" })

  # # DELETE
  # get("/delete_ambience/:id_to_remove", { :controller => "ambiences", :action => "destroy_row" })

  # #------------------------------

  # # Routes for the Neighborhood resource:

  # # CREATE
  # get("/neighborhoods/new", { :controller => "neighborhoods", :action => "new_form" })
  # post("/create_neighborhood", { :controller => "neighborhoods", :action => "create_row" })

  # # READ
  # get("/neighborhoods", { :controller => "neighborhoods", :action => "index" })
  # get("/neighborhoods/:id_to_display", { :controller => "neighborhoods", :action => "show" })

  # # UPDATE
  # get("/neighborhoods/:prefill_with_id/edit", { :controller => "neighborhoods", :action => "edit_form" })
  # post("/update_neighborhood/:id_to_modify", { :controller => "neighborhoods", :action => "update_row" })

  # # DELETE
  # get("/delete_neighborhood/:id_to_remove", { :controller => "neighborhoods", :action => "destroy_row" })

  # #------------------------------

  # # Routes for the Study location detail resource:

  # # CREATE
  # get("/study_location_details/new", { :controller => "study_location_details", :action => "new_form" })
  # post("/create_study_location_detail", { :controller => "study_location_details", :action => "create_row" })

  # # READ
  # get("/study_location_details", { :controller => "study_location_details", :action => "index" })
  # get("/study_location_details/:id_to_display", { :controller => "study_location_details", :action => "show" })

  # # UPDATE
  # get("/study_location_details/:prefill_with_id/edit", { :controller => "study_location_details", :action => "edit_form" })
  # post("/update_study_location_detail/:id_to_modify", { :controller => "study_location_details", :action => "update_row" })

  # # DELETE
  # get("/delete_study_location_detail/:id_to_remove", { :controller => "study_location_details", :action => "destroy_row" })

  #------------------------------

  # devise_for :users
  # devise_for :admin_users, ActiveAdmin::Devise.config
  # ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

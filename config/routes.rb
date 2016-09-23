# == Route Map
#
#                           Prefix Verb   URI Pattern                                      Controller#Action
#                             root GET    /                                                director#index
#                         director GET    /director(.:format)                              director#index
#                        dashboard GET    /dashboard(.:format)                             dashboard#index
#                new_admin_session GET    /admins/sign_in(.:format)                        admins/sessions#new
#                    admin_session POST   /admins/sign_in(.:format)                        admins/sessions#create
#            destroy_admin_session DELETE /admins/sign_out(.:format)                       admins/sessions#destroy
#                   admin_password POST   /admins/password(.:format)                       admins/passwords#create
#               new_admin_password GET    /admins/password/new(.:format)                   admins/passwords#new
#              edit_admin_password GET    /admins/password/edit(.:format)                  admins/passwords#edit
#                                  PATCH  /admins/password(.:format)                       admins/passwords#update
#                                  PUT    /admins/password(.:format)                       admins/passwords#update
#               admin_confirmation POST   /admins/confirmation(.:format)                   devise/confirmations#create
#           new_admin_confirmation GET    /admins/confirmation/new(.:format)               devise/confirmations#new
#                                  GET    /admins/confirmation(.:format)                   devise/confirmations#show
#                     admin_unlock POST   /admins/unlock(.:format)                         devise/unlocks#create
#                 new_admin_unlock GET    /admins/unlock/new(.:format)                     devise/unlocks#new
#                                  GET    /admins/unlock(.:format)                         devise/unlocks#show
#                 new_user_session GET    /users/sign_in(.:format)                         users/sessions#new
#                     user_session POST   /users/sign_in(.:format)                         users/sessions#create
#             destroy_user_session DELETE /users/sign_out(.:format)                        users/sessions#destroy
#                    user_password POST   /users/password(.:format)                        users/passwords#create
#                new_user_password GET    /users/password/new(.:format)                    users/passwords#new
#               edit_user_password GET    /users/password/edit(.:format)                   users/passwords#edit
#                                  PATCH  /users/password(.:format)                        users/passwords#update
#                                  PUT    /users/password(.:format)                        users/passwords#update
#         cancel_user_registration GET    /users/cancel(.:format)                          users/registrations#cancel
#                user_registration POST   /users(.:format)                                 users/registrations#create
#            new_user_registration GET    /users/sign_up(.:format)                         users/registrations#new
#           edit_user_registration GET    /users/edit(.:format)                            users/registrations#edit
#                                  PATCH  /users(.:format)                                 users/registrations#update
#                                  PUT    /users(.:format)                                 users/registrations#update
#                                  DELETE /users(.:format)                                 users/registrations#destroy
#                user_confirmation POST   /users/confirmation(.:format)                    devise/confirmations#create
#            new_user_confirmation GET    /users/confirmation/new(.:format)                devise/confirmations#new
#                                  GET    /users/confirmation(.:format)                    devise/confirmations#show
#                      user_unlock POST   /users/unlock(.:format)                          devise/unlocks#create
#                  new_user_unlock GET    /users/unlock/new(.:format)                      devise/unlocks#new
#                                  GET    /users/unlock(.:format)                          devise/unlocks#show
#                 admins_dashboard GET    /admins/dashboard(.:format)                      admins/dashboard#index
#                   admins_console GET    /admins/console(.:format)                        admins/tools#console
# clear_filters_admins_action_step PUT    /admins/action_steps/:id/clear_filters(.:format) admins/action_steps#clear_filters
#              admins_action_steps GET    /admins/action_steps(.:format)                   admins/action_steps#index
#                                  POST   /admins/action_steps(.:format)                   admins/action_steps#create
#           new_admins_action_step GET    /admins/action_steps/new(.:format)               admins/action_steps#new
#          edit_admins_action_step GET    /admins/action_steps/:id/edit(.:format)          admins/action_steps#edit
#               admins_action_step GET    /admins/action_steps/:id(.:format)               admins/action_steps#show
#                                  PATCH  /admins/action_steps/:id(.:format)               admins/action_steps#update
#                                  PUT    /admins/action_steps/:id(.:format)               admins/action_steps#update
#                                  DELETE /admins/action_steps/:id(.:format)               admins/action_steps#destroy
#       admins_action_step_filters GET    /admins/action_step_filters(.:format)            admins/action_step_filters#index
#                                  POST   /admins/action_step_filters(.:format)            admins/action_step_filters#create
#    new_admins_action_step_filter GET    /admins/action_step_filters/new(.:format)        admins/action_step_filters#new
#   edit_admins_action_step_filter GET    /admins/action_step_filters/:id/edit(.:format)   admins/action_step_filters#edit
#        admins_action_step_filter GET    /admins/action_step_filters/:id(.:format)        admins/action_step_filters#show
#                                  PATCH  /admins/action_step_filters/:id(.:format)        admins/action_step_filters#update
#                                  PUT    /admins/action_step_filters/:id(.:format)        admins/action_step_filters#update
#                                  DELETE /admins/action_step_filters/:id(.:format)        admins/action_step_filters#destroy
#          admins_question_filters GET    /admins/question_filters(.:format)               admins/question_filters#index
#                                  POST   /admins/question_filters(.:format)               admins/question_filters#create
#       new_admins_question_filter GET    /admins/question_filters/new(.:format)           admins/question_filters#new
#      edit_admins_question_filter GET    /admins/question_filters/:id/edit(.:format)      admins/question_filters#edit
#           admins_question_filter GET    /admins/question_filters/:id(.:format)           admins/question_filters#show
#                                  PATCH  /admins/question_filters/:id(.:format)           admins/question_filters#update
#                                  PUT    /admins/question_filters/:id(.:format)           admins/question_filters#update
#                                  DELETE /admins/question_filters/:id(.:format)           admins/question_filters#destroy
#              admins_user_filters GET    /admins/user_filters(.:format)                   admins/user_filters#index
#                                  POST   /admins/user_filters(.:format)                   admins/user_filters#create
#           new_admins_user_filter GET    /admins/user_filters/new(.:format)               admins/user_filters#new
#          edit_admins_user_filter GET    /admins/user_filters/:id/edit(.:format)          admins/user_filters#edit
#               admins_user_filter GET    /admins/user_filters/:id(.:format)               admins/user_filters#show
#                                  PATCH  /admins/user_filters/:id(.:format)               admins/user_filters#update
#                                  PUT    /admins/user_filters/:id(.:format)               admins/user_filters#update
#                                  DELETE /admins/user_filters/:id(.:format)               admins/user_filters#destroy
#                   admins_filters GET    /admins/filters(.:format)                        admins/filters#index
#                                  POST   /admins/filters(.:format)                        admins/filters#create
#                new_admins_filter GET    /admins/filters/new(.:format)                    admins/filters#new
#               edit_admins_filter GET    /admins/filters/:id/edit(.:format)               admins/filters#edit
#                    admins_filter GET    /admins/filters/:id(.:format)                    admins/filters#show
#                                  PATCH  /admins/filters/:id(.:format)                    admins/filters#update
#                                  PUT    /admins/filters/:id(.:format)                    admins/filters#update
#                                  DELETE /admins/filters/:id(.:format)                    admins/filters#destroy
#              score_admins_survey PUT    /admins/surveys/:id/score(.:format)              admins/surveys#score
#           complete_admins_survey PUT    /admins/surveys/:id/complete(.:format)           admins/surveys#complete
#          recommend_admins_survey PUT    /admins/surveys/:id/recommend(.:format)          admins/surveys#recommend
#                   admins_surveys GET    /admins/surveys(.:format)                        admins/surveys#index
#                                  POST   /admins/surveys(.:format)                        admins/surveys#create
#                new_admins_survey GET    /admins/surveys/new(.:format)                    admins/surveys#new
#               edit_admins_survey GET    /admins/surveys/:id/edit(.:format)               admins/surveys#edit
#                    admins_survey GET    /admins/surveys/:id(.:format)                    admins/surveys#show
#                                  PATCH  /admins/surveys/:id(.:format)                    admins/surveys#update
#                                  PUT    /admins/surveys/:id(.:format)                    admins/surveys#update
#                                  DELETE /admins/surveys/:id(.:format)                    admins/surveys#destroy
#          publish_admins_question PUT    /admins/questions/:id/publish(.:format)          admins/questions#publish
#           retire_admins_question PUT    /admins/questions/:id/retire(.:format)           admins/questions#retire
#    clear_filters_admins_question PUT    /admins/questions/:id/clear_filters(.:format)    admins/questions#clear_filters
#                 admins_questions GET    /admins/questions(.:format)                      admins/questions#index
#                                  POST   /admins/questions(.:format)                      admins/questions#create
#              new_admins_question GET    /admins/questions/new(.:format)                  admins/questions#new
#             edit_admins_question GET    /admins/questions/:id/edit(.:format)             admins/questions#edit
#                  admins_question GET    /admins/questions/:id(.:format)                  admins/questions#show
#                                  PATCH  /admins/questions/:id(.:format)                  admins/questions#update
#                                  PUT    /admins/questions/:id(.:format)                  admins/questions#update
#                                  DELETE /admins/questions/:id(.:format)                  admins/questions#destroy
#     publish_admins_survey_option PUT    /admins/survey_options/:id/publish(.:format)     admins/survey_options#publish
#      retire_admins_survey_option PUT    /admins/survey_options/:id/retire(.:format)      admins/survey_options#retire
#     surveys_admins_survey_option GET    /admins/survey_options/:id/surveys(.:format)     admins/survey_options#surveys
#            admins_survey_options GET    /admins/survey_options(.:format)                 admins/survey_options#index
#                                  POST   /admins/survey_options(.:format)                 admins/survey_options#create
#         new_admins_survey_option GET    /admins/survey_options/new(.:format)             admins/survey_options#new
#        edit_admins_survey_option GET    /admins/survey_options/:id/edit(.:format)        admins/survey_options#edit
#             admins_survey_option GET    /admins/survey_options/:id(.:format)             admins/survey_options#show
#                                  PATCH  /admins/survey_options/:id(.:format)             admins/survey_options#update
#                                  PUT    /admins/survey_options/:id(.:format)             admins/survey_options#update
#                                  DELETE /admins/survey_options/:id(.:format)             admins/survey_options#destroy
#                   admins_tenants GET    /admins/tenants(.:format)                        admins/tenants#index
#                                  POST   /admins/tenants(.:format)                        admins/tenants#create
#                new_admins_tenant GET    /admins/tenants/new(.:format)                    admins/tenants#new
#               edit_admins_tenant GET    /admins/tenants/:id/edit(.:format)               admins/tenants#edit
#                    admins_tenant GET    /admins/tenants/:id(.:format)                    admins/tenants#show
#                                  PATCH  /admins/tenants/:id(.:format)                    admins/tenants#update
#                                  PUT    /admins/tenants/:id(.:format)                    admins/tenants#update
#                                  DELETE /admins/tenants/:id(.:format)                    admins/tenants#destroy
#             score_admins_thriver PUT    /admins/thrivers/:id/score(.:format)             admins/thrivers#score
#          complete_admins_thriver PUT    /admins/thrivers/:id/complete(.:format)          admins/thrivers#complete
#         recommend_admins_thriver PUT    /admins/thrivers/:id/recommend(.:format)         admins/thrivers#recommend
#             reset_admins_thriver PUT    /admins/thrivers/:id/reset(.:format)             admins/thrivers#reset
#     clear_filters_admins_thriver PUT    /admins/thrivers/:id/clear_filters(.:format)     admins/thrivers#clear_filters
#                  admins_thrivers GET    /admins/thrivers(.:format)                       admins/thrivers#index
#                                  POST   /admins/thrivers(.:format)                       admins/thrivers#create
#               new_admins_thriver GET    /admins/thrivers/new(.:format)                   admins/thrivers#new
#              edit_admins_thriver GET    /admins/thrivers/:id/edit(.:format)              admins/thrivers#edit
#                   admins_thriver GET    /admins/thrivers/:id(.:format)                   admins/thrivers#show
#                                  PATCH  /admins/thrivers/:id(.:format)                   admins/thrivers#update
#                                  PUT    /admins/thrivers/:id(.:format)                   admins/thrivers#update
#                                  DELETE /admins/thrivers/:id(.:format)                   admins/thrivers#destroy
#             reset_password_admin POST   /admins/:id/reset_password(.:format)             admins#reset_password
#                           admins GET    /admins(.:format)                                admins#index
#                                  POST   /admins(.:format)                                admins#create
#                        new_admin GET    /admins/new(.:format)                            admins#new
#                       edit_admin GET    /admins/:id/edit(.:format)                       admins#edit
#                            admin GET    /admins/:id(.:format)                            admins#show
#                                  PATCH  /admins/:id(.:format)                            admins#update
#                                  PUT    /admins/:id(.:format)                            admins#update
#                                  DELETE /admins/:id(.:format)                            admins#destroy
#                            users GET    /users(.:format)                                 users#index
#                                  POST   /users(.:format)                                 users#create
#                         new_user GET    /users/new(.:format)                             users#new
#                        edit_user GET    /users/:id/edit(.:format)                        users#edit
#                             user GET    /users/:id(.:format)                             users#show
#                                  PATCH  /users/:id(.:format)                             users#update
#                                  PUT    /users/:id(.:format)                             users#update
#                                  DELETE /users/:id(.:format)                             users#destroy
#                user_action_steps GET    /user_action_steps(.:format)                     user_action_steps#index
#                                  POST   /user_action_steps(.:format)                     user_action_steps#create
#             new_user_action_step GET    /user_action_steps/new(.:format)                 user_action_steps#new
#            edit_user_action_step GET    /user_action_steps/:id/edit(.:format)            user_action_steps#edit
#                 user_action_step GET    /user_action_steps/:id(.:format)                 user_action_steps#show
#                                  PATCH  /user_action_steps/:id(.:format)                 user_action_steps#update
#                                  PUT    /user_action_steps/:id(.:format)                 user_action_steps#update
#                                  DELETE /user_action_steps/:id(.:format)                 user_action_steps#destroy
#                    notifications GET    /notifications(.:format)                         notifications#index
#                                  POST   /notifications(.:format)                         notifications#create
#                 new_notification GET    /notifications/new(.:format)                     notifications#new
#                edit_notification GET    /notifications/:id/edit(.:format)                notifications#edit
#                     notification GET    /notifications/:id(.:format)                     notifications#show
#                                  PATCH  /notifications/:id(.:format)                     notifications#update
#                                  PUT    /notifications/:id(.:format)                     notifications#update
#                                  DELETE /notifications/:id(.:format)                     notifications#destroy
#                          surveys GET    /surveys(.:format)                               surveys#edit
#                                  PUT    /surveys(.:format)                               surveys#update
#                   surveys_retake GET    /surveys/retake(.:format)                        surveys#retake
#               surveys_acceptance GET    /surveys/acceptance(.:format)                    surveys#acceptance
#             surveys_accept_terms POST   /surveys/accept_terms(.:format)                  surveys#accept_terms
#                                  GET    /surveys(.:format)                               surveys#index
#                                  POST   /surveys(.:format)                               surveys#create
#                       new_survey GET    /surveys/new(.:format)                           surveys#new
#                      edit_survey GET    /surveys/:id/edit(.:format)                      surveys#edit
#                           survey GET    /surveys/:id(.:format)                           surveys#show
#                                  PATCH  /surveys/:id(.:format)                           surveys#update
#                                  PUT    /surveys/:id(.:format)                           surveys#update
#                                  DELETE /surveys/:id(.:format)                           surveys#destroy
#                            plans GET    /plans(.:format)                                 plans#index
#                plans_get_started GET    /plans/get_started(.:format)                     plans#get_started
#                   plans_set_slot GET    /plans/set_slot(.:format)                        plans#set_slot
#                 plans_clear_slot GET    /plans/clear_slot(.:format)                      plans#clear_slot
#               plans_complete_day GET    /plans/complete_day(.:format)                    plans#complete_day
#          plans_start_action_step GET    /plans/start_action_step(.:format)               plans#start_action_step
#                      get_started GET    /get_started(.:format)                           support#get_started
#                  survey_complete GET    /survey_complete(.:format)                       support#survey_complete
#                    legal_privacy GET    /legal/privacy(.:format)                         legal#privacy
#                      legal_terms GET    /legal/terms(.:format)                           legal#terms
#                                  GET    /*any(.:format)                                  errors#error_404
#

Rails.application.routes.draw do
  root to: 'director#index'
  get 'director', to: 'director#index'
  get 'dashboard', to: 'dashboard#index'

  devise_for :admins, controllers: {
    sessions: 'admins/sessions',
    passwords: "admins/passwords"
  }

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: "users/registrations",
    passwords: "users/passwords"
  }

  namespace :admins do
    get 'dashboard', to: 'dashboard#index'
    get 'console',   to: 'tools#console'

    get 'logins', to: 'logins#index'

    # resources :action_steps do
    #   member do
    #     put 'clear_filters', to: 'action_steps#clear_filters'
    #     get 'preview', to: 'action_steps#preview'
    #   end
    # end

    # resources :action_step_filters
    # resources :question_filters
    # resources :user_filters
    # resources :filters
    #
    # resources :surveys do
    #   member do
    #     put 'score', to: 'surveys#score'
    #     put 'complete', to: 'surveys#complete'
    #     put 'recommend', to: 'surveys#recommend'
    #   end
    # end
    #
    # resources :questions do
    #   member do
    #     put 'publish', to: 'questions#publish'
    #     put 'retire', to: 'questions#retire'
    #     put 'clear_filters', to: 'questions#clear_filters'
    #   end
    # end
    # resources :survey_options do
    #   member do
    #     put 'publish', to: 'survey_options#publish'
    #     put 'retire', to: 'survey_options#retire'
    #     get 'surveys', to: 'survey_options#surveys'
    #   end
    # end

    resources :tenants
    # resources :thrivers do
    #   member do
    #     put 'score',         to: 'thrivers#score'
    #     put 'complete',      to: 'thrivers#complete'
    #     put 'recommend',     to: 'thrivers#recommend'
    #     put 'restart_survey',        to: 'thrivers#restart_survey'
    #     put 'clear_recommendations', to: 'thrivers#clear_recommendations'
    #     put 'clear_filters', to: 'thrivers#clear_filters'
    #   end
    # end

  end

  resources :admins do
    member do
      post 'reset_password'
    end
  end

  resources :users
  # resources :user_action_steps
  # resources :notifications


  # Surveys
  # get 'surveys', to: 'surveys#edit'
  # put 'surveys', to: 'surveys#update'
  # get 'surveys/retake', to: 'surveys#retake'
  # get 'surveys/acceptance', to: 'surveys#acceptance'
  # post 'surveys/accept_terms', to: 'surveys#accept_terms'
  # resources :surveys

  # Plan
  # get  'plans',                    to: 'plans#index'
  # get  'plans/get_started',        to: 'plans#get_started'
  # get  'plans/set_slot',           to: 'plans#set_slot'
  # get  'plans/clear_slot',         to: 'plans#clear_slot'
  # get  'plans/complete_day',       to: 'plans#complete_day'
  # get  'plans/start_action_step',  to: 'plans#start_action_step'
  # get  'plans/show_more',          to: 'plans#show_more'

  # Support
  get 'get_started',       to: 'support#get_started'
  get 'get_help',          to: 'support#get_help'
  # get 'survey_complete',   to: 'support#survey_complete'

  # Legal
  get 'legal/privacy',       to: 'legal#privacy'
  get 'legal/terms',         to: 'legal#terms'

  # Catch 404
  get '*any', via: :all, to: 'errors#error_404'
end

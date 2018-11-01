class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user! , except:[:user_steps]
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name,
                                                         :phone,
                                                         :date_of_birth,
                                                         :nationality,
                                                         :place_of_birth,
                                                         :gender,
                                                         :id_number,
                                                         :civil_status,
                                                         :home_address,
                                                         :school,
                                                         :number_of_student,
                                                         :course,
                                                         :year,
                                                         :alternative_email,
                                                         :type_of_registration,
                                                         :start_year,
                                                         :end_year,
                                                         :company_name,
                                                         :type_of_registration,
                                                         :comercial_name_of_the_business,
                                                         :company_address,
                                                         :vat_number,
                                                         :company_contact])

      devise_parameter_sanitizer.permit(:account_update, keys: [:name,
                                                         :phone,
                                                         :date_of_birth,
                                                         :nationality,
                                                         :place_of_birth,
                                                         :gender,
                                                         :id_number,
                                                         :civil_status,
                                                         :home_address,
                                                         :school,
                                                         :number_of_student,
                                                         :course,
                                                         :year,
                                                         :alternative_email,
                                                         :type_of_registration,
                                                         :start_year,
                                                         :end_year,
                                                         :company_name,
                                                         :type_of_registration,
                                                         :comercial_name_of_the_business,
                                                         :company_address,
                                                         :vat_number,
                                                         :company_contact])
    end

end

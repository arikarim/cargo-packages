# The main routes map associates routes to handlers.
# For more information please see: https://martenframework.com/docs/handlers-and-http/routing
Marten.routes.draw do
  path "/", HomeHandler, name: "home"

  path "/custom_duty_sections", CustomDutySectionListHandler, name: "list"
  path "/create_custom_duty_sections", CustomDutySectionCreateHandler, name: "custom_duty_section_create"
  path "/custom_duty_section_detail/<id:string>", CustomDutyHsSections::DetailHandler, name: "custom_duty_section_detail"
end

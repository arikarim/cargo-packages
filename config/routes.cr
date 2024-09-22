# The main routes map associates routes to handlers.
# For more information please see: https://martenframework.com/docs/handlers-and-http/routing



CUSTOM_DUTY_HS_SECTIONS = Marten::Routing::Map.draw do
  path "/list", CustomDutyHsSections::ListHandler, name: "list"
  path "/create", CustomDutyHsSections::CreateHandler, name: "create"
  path "/detail/<id:string>", CustomDutyHsSections::DetailHandler, name: "detail"
  path "/update/<id:string>", CustomDutyHsSections::UpdateHandler, name: "update"
  path "/delete/<id:string>", CustomDutyHsSections::DeleteHandler, name: "delete"
end

Marten.routes.draw do
  path "/", HomeHandler, name: "home"

  path "/v1/cdhs", CUSTOM_DUTY_HS_SECTIONS
end

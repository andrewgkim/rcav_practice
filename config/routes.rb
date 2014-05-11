Rails.application.routes.draw do
  get("/", { :controller => "calculations", :action => "home" })

  get("/square", { :controller => "calculations", :action => "square" })

  get("/square_root/", { :controller => "calculations", :action => "sqrt" })

  get("/payment/", { :controller => "calculations", :action => "pmt" })
end

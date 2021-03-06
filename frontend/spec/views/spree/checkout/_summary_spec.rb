require 'spec_helper'

describe "spree/checkout/_summary.html.erb", type: :view do
  # Regression spec for #4223
  it "does not use the @order instance variable" do
    order = stub_model(Spree::Order)
    render partial: "spree/checkout/summary", locals: {order: order}
  end
end

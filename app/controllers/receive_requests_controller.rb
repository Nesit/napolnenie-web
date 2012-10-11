class ReceiveRequestsController < ApplicationController
  def receive
    if params[:service_request]
      ServiceRequest.create(params[:service_request])
    elsif params[:audit_request]
      AuditRequest.create(params[:audit_request])
    end
    render text: 'ok'
  end
end

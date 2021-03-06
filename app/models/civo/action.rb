module Civo
  class Action < Base
    get :all, "/v#{ENV["CIVO_API_VERSION"] || "2"}/actions"
    post :create, "/v#{ENV["CIVO_API_VERSION"] || "2"}/actions"

    def to_partial_path
      "civo/action"
    end
  end
end

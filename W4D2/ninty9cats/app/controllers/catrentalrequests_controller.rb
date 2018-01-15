class CatrentalrequestsController < ActionController::Base

def new

end


def create


end

def show

end

def index
@rentals = CatRentalRequest.all
end
end

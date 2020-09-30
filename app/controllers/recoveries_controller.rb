class RecoveriesController < ApplicationController
    
    def index 
        @recoveries = Recovery.all 
    end
    
end

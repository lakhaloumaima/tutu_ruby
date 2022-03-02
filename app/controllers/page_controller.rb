class PageController < ApplicationController
      def salut
        @name = params[:name].inspect
        #render('salut')
      end  
end
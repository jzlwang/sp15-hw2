class PagesController < ApplicationController
  def home
    @baz = Foobar.baz ["1", "2", "3", "3", "4", "5", "10", "11", "100"]
  end

  def stringify
    if params[:name].blank? or params[:adjective].blank?
      @text = "You are nothing!"
    else
      @text = params[:name] + " is so " + params[:adjective]
    end
  end

  def age
  end

  def person
    @pers = Person.new(params[:name], params[:age])
    @intro = @pers.introduce
    @nick = @pers.nickname
    @year = @pers.birth_year
  end
end

class ModelExamplesController < ApplicationController

  # NON DB MODEL EXAMPLES
  def example1
    non_db_model = PlainObjectExample.new('My Name Here')

    render plain: non_db_model.pretty_inspect
  end

  def example2
    # EXERCISE:
    # 1) Delete the nil assignment
    # 2) Uncomment the assignment to PlainObjectExample.new
    # 3) Change PlainObjectExample.new creation to accept a query param


    # 1) Delete this nil assignment
    non_db_model = nil

    # 2) Uncomment the "non_db_model" assignment
    # 3) set the object name using a query param
    #
    # non_db_model =  PlainObjectExample.new(USE YOUR QUERY PARAM HERE)

    render plain: non_db_model.pretty_inspect
  end


  # DB MODEL EXAMPLES
  def example3
    if params[:given_name]
      quantity = params[:quantity] || rand(100)
      Example.new(given_name: params[:given_name], quantity: quantity).save
    end

    render plain: Example.all.to_a
  end

  def example4
    render plain: Example.all.map(&:given_name)
  end
end

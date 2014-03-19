class MainController < ModelController
  def index
    # Add code for when the index view is loaded
    store._users.find(_id: '0').then do |result|
      if result.size == 0
        store._users << {_id: '0'}
      end
    end
  end

  def about
    # Add code for when the about view is loaded
  end

  private
    # the main template contains a #template binding that shows another
    # template.  This is the path to that template.  It may change based
    # on the params._controller and params._action values.
    def main_path
      params._controller.or('main') + "/" + params._action.or('index')
    end
end

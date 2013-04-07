class PgconmapController < ActionController::Base
  protect_from_forgery
  def view
    @title='MapExplorer - PGCon Map (Ottawa, Ontario)'
    render :layout=>'application'
  end
  def about
    @title='MapExplorer - PGCon Map (Ottawa, Ontario)'
    render :layout=>'application'
  end
  def points
    points=Point.where("point_type='pgcon'")
    points_array=[]
    points.each do |p|
      elem= { 'lat'=>p.lat,
        'lon'=>p.lon,
        'description'=>p.description
      }
      points_array.push(elem)
    end
    @points_json=JSON.generate(points_array)
    render :text=>@points_json
  end
  def interest
    render :layout=>'application'
  end
end

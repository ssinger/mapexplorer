class BurlingtonrecController < ActionController::Base
protect_from_forgery
 def view
    render :layout=>'application'
  end
  def about   
    render :layout=>'application'
  end
 
  def pools 
    @request_url=burlingtonrec_pools_list_path
    render :action=>'interest',:layout=>'application'
  end
  def splash
      @request_url=burlingtonrec_splash_list_path
      render :action=>'interest',:layout=>'application'
  end
  def pools_list
    points=Facility.where("facility_type like '%Pool%'").order('name')    
    point_lookup(points)
  end
  def splash_list
    points=Facility.where("facility_type like 'Spray Pad%'").order('name')
    points.order("name")
    point_lookup(points)
  end
  def point_lookup(points)   
    points_array=[]
    points.each do |p|
      url=''
      if p.url != nil
        url=sprintf "<a href=\"%s\">Additional Information</a>" , p.url
      end
      name='Swimming Pool'
      if p.name != nil
        name=p.name
      end
      elem= { 'lat'=>p.lat,
        'lon'=>p.lon,
        'description'=>name + ' ' + url + '<br>source:'+  p.source,
        'name' => name,
        'city' => p.city
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

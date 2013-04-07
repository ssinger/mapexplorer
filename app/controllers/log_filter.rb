class LogFilter
  def self.filter(controller)
    header=controller.request.headers
    agent = header['HTTP_USER_AGENT']
    referal = header['HTTP_REFERER']
    url = controller.request.url
    client = controller.request.remote_ip
    visit = WebVisit.new(:url=>url,:referal=>referal,:agent=>agent,
                         :client=>client,
                         :date=>DateTime.now())
    visit.save()
  end
end

class PeopleSweeper < ActionController::Caching::Sweeper
  observe Person

  def sweep(Person)
    expire_page peoples_path
    expire_page people_path(Person)
    expire_page "/"
  end

  alias_method :after_update, :sweep
  alias_method :after_create, :sweep
  alias_method :after_destory, :sweep
end
module PagesHelper
  def previous?
    @page - 1 > 0
  end

  def next?
    @page + 1 <= pages
  end

  def pages
    (User.count/10.0).ceil
  end

  def floor
    @page.between?(1, 10) ? 1 : @page - 9
  end

  def ceil
    if @page.between?(1,10)
      20
    else
      pages <= @page + 10 ? pages  : (@page + 10)
    end
  end
end
class MockupsController < ApplicationController
  layout 'dashboard'

  def page_a
    render layout: 'application'
  end

  def page_b
  end

  def page_c
  end

  def login
    render layout: 'mockups_yield'
  end

  def blog_clean_full_width
    render layout: 'mockups_pofo'
  end

end

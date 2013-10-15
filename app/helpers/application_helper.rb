module ApplicationHelper
  def self.included(base)
    base.send(:include, SessionConcern)
  end
end

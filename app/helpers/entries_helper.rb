module EntriesHelper
  def render_entry_submitter(entry)
    if entry.user_handle.blank?
      render partial: 'entries/anonymous_submitter'
    else
      render partial: 'entries/submitter_github_link', locals: {github_handle: entry.user_handle}
    end
  end
end

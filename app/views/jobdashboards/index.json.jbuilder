json.array!(@jobdashboards) do |jobdashboard|
  json.extract! jobdashboard, :id, :job_id, :job_comment
  json.url jobdashboard_url(jobdashboard, format: :json)
end

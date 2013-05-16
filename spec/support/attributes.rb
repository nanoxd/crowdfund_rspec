def project_attributes(overrides = {})
  {
    name: "Start-Up Projectz",
    description: "A description of a start-up project",
    pledging_ends_on: 1.day.from_now,
    target_pledge_amount: 100.00,
    website: "http://project-ab.com",
    team_members: "The startup guys",
    image_file_name: "placeholder.png"
  }.merge(overrides)
end

json.projects @projects.each do |project|
  json.id project.id
  json.title project.title
  json.description project.description
  json.link project.link
  json.repository project.repository

  json.image_url url_for(project.image) if project.image.attached?

  json.tecnologies project.tecnologies.each do |tecnology|
    json.name tecnology.name
  end
end

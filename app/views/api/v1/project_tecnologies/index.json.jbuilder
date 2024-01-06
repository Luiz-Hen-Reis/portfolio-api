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

json.formations @institutions.each do |institution|
  json.id institution.id
  json.name institution.name
  json.site institution.site
  json.title institution.title
  json.period institution.period
  json.description institution.description

  json.logo_url url_for(institution.logo)
end

json.tecnologies @tecnologies.each do |tecnology|
  json.partial! 'api/v1/tecnologies/tecnology', tecnology: tecnology
end

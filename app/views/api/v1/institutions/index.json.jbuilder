json.formations @institutions.each do |institution|
  json.id institution.id
  json.name institution.name
  json.site institution.site
  json.title institution.title
  json.period institution.period
  json.description institution.description

  json.logo_url url_for(institution.logo)
end

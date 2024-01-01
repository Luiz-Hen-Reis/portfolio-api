json.id tecnology.id
json.name tecnology.name
json.institution tecnology.institution.name

json.institution_logo url_for(tecnology.institution.logo) if tecnology.institution.logo.attached?
json.icon url_for(tecnology.icon) if tecnology.icon.attached?
json.certification_url url_for(tecnology.certification) if tecnology.certification.attached?

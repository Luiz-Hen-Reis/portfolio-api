Institution.destroy_all
Tecnology.destroy_all
Project.destroy_all

# institutions

onebitcode = Institution.create(name: "Onebitcode", site: "https://pro.onebitcode.com/", title: "Fullstack Formation", period: "2023", description: "Fullstack training, has super complete Node.js modules, SQL language, Sequelize ORM, relational and non-relational databases. It also has Frontend modules.")
onebitcode.logo.attach(io: File.open('public/logos/onebitcode.png'), filename: 'onebitcode.png')

b7web = Institution.create(name: "B7web", site: "https://b7web.com.br/", title: "Frontend Formation", period: "2022", description: "Training in the main Frontend technologies on the market such as React.js, Next.js, Typescript, Tailwind, etc.")
b7web.logo.attach(io: File.open('public/logos/b7web.png'), filename: 'b7web.png')

# tecnologies

react = Tecnology.create(name: "React.js", institution: b7web)
react.icon.attach(io: File.open('public/icons/react.svg'), filename: 'react.svg')
react.certification.attach(io: File.open('public/certifications/react.jpg'), filename: 'react.jpg')

next_js = Tecnology.create(name: "Next.js", institution: onebitcode)
next_js.icon.attach(io: File.open('public/icons/next.svg'), filename: 'next.svg')
next_js.certification.attach(io: File.open('public/certifications/next.pdf'), filename: 'next.pdf')

typescript = Tecnology.create(name: "Typescript", institution: b7web)
typescript.icon.attach(io: File.open('public/icons/typescript.svg'), filename: 'typescript.svg')
typescript.certification.attach(io: File.open('public/certifications/typescript.jpg'), filename: 'typescript.jpg')

node = Tecnology.create(name: "Node.js", institution: b7web)
node.icon.attach(io: File.open('public/icons/node.svg'), filename: 'node.svg')
node.certification.attach(io: File.open('public/certifications/node.pdf'), filename: 'node.pdf')

sql_language = Tecnology.create(name: "Database and SQL Language", institution: onebitcode)
sql_language.icon.attach(io: File.open('public/icons/sql.svg'), filename: 'sql.svg')
sql_language.certification.attach(io: File.open('public/certifications/sql.pdf'), filename: 'sql.pdf')

postgres = Tecnology.create(name: "PostgreSQL", institution: onebitcode)
postgres.icon.attach(io: File.open('public/icons/postgresql.svg'), filename: 'postgresql.svg')
postgres.certification.attach(io: File.open('public/certifications/sql-node.pdf'), filename: 'sql-node.pdf')

scrum = Tecnology.create(name: "Agile Methodologies (SCRUM)", institution: onebitcode)
scrum.icon.attach(io: File.open('public/icons/scrum.svg'), filename: 'scrum.svg')
scrum.certification.attach(io: File.open('public/certifications/scrum.pdf'), filename: 'scrum.pdf')

jest = Tecnology.create(name: "Automated Testing in JS with Jest", institution: onebitcode)
jest.icon.attach(io: File.open('public/icons/jest.svg'), filename: 'jest.svg')
jest.certification.attach(io: File.open('public/certifications/test.pdf'), filename: 'jest.pdf')

styled_components = Tecnology.create(name: "Styled Components", institution: onebitcode)
styled_components.icon.attach(io: File.open('public/icons/styled-components.svg'), filename: 'styled-components.svg')
styled_components.certification.attach(io: File.open('public/certifications/styled-components.pdf'), filename: 'styled-components.pdf')

ruby = Tecnology.create(name: "Ruby and Ruby on Rails", institution: onebitcode)
ruby.icon.attach(io: File.open('public/icons/ruby.svg'), filename: 'ruby.svg')
ruby.certification.attach(io: File.open('public/certifications/ruby.pdf'), filename: 'ruby.pdf')

react_query = Tecnology.create(name: "React Query", institution: onebitcode)
react_query.icon.attach(io: File.open('public/icons/react-query.svg'), filename: 'react-query.svg')

tailwind = Tecnology.create(name: "TailwindCSS", institution: onebitcode)
tailwind.icon.attach(io: File.open('public/icons/tailwind.svg'), filename: 'tailwind.svg')

angular = Tecnology.create(name: "Angular.js", institution: onebitcode)
angular.icon.attach(io: File.open('public/icons/angular.svg'), filename: 'angular.svg')
angular.certification.attach(io: File.open('public/certifications/angular.pdf'), filename: 'angular.pdf')

axios = Tecnology.create(name: "Axios", institution: onebitcode)
axios.icon.attach(io: File.open('public/icons/axios.svg'), filename: 'axios.svg')

# projects

caputeeno = Project.create(title: 'Caputeeno e-commerce', description: 'Project made based on the challenge proposed by Rocketseat, with some technologies different from those proposed. Read the README in the repository for more information.', link: 'https://frontend-challenge-e-commerce.vercel.app/', repository: 'https://github.com/Luiz-Hen-Reis/frontend_challenge_e-commerce')
caputeeno.image.attach(io: File.open('public/projects/caputeeno.png'), filename: 'caputeeno.png')
caputeeno.tecnologies << next_js
caputeeno.tecnologies << styled_components
caputeeno.tecnologies << typescript
caputeeno.tecnologies << postgres

stone_currency = Project.create(title: 'Stone Currency', description: 'An application for converting values from dollars to reais.', link: 'https://stone-challenge-three.vercel.app/', repository: 'https://github.com/Luiz-Hen-Reis/stone-challenge')
stone_currency.image.attach(io: File.open('public/projects/stone-currency.png'), filename: 'stone-currency.png')
stone_currency.tecnologies << next_js
stone_currency.tecnologies << styled_components
stone_currency.tecnologies << typescript
stone_currency.tecnologies << react_query
stone_currency.tecnologies << jest
stone_currency.tecnologies << axios

portfolio = Project.create(title: 'My Portfolio', description: 'This portfolio that you see', link: 'https://main-portfolio-knjf.vercel.app/', repository: 'https://github.com/Luiz-Hen-Reis/luiz_henrique_portfolio')
portfolio.image.attach(io: File.open('public/projects/portfolio.png'), filename: 'portfolio.png')
portfolio.tecnologies << next_js
portfolio.tecnologies << tailwind
portfolio.tecnologies << typescript
portfolio.tecnologies << postgres
portfolio.tecnologies << ruby
portfolio.tecnologies << jest

fakestore = Project.create(title: 'Fakestore App', description: 'An application made to apply and understand how a shopping cart works in e-commerce.', link: 'https://fake-store-app-three.vercel.app/', repository: 'https://github.com/Luiz-Hen-Reis/fake-store-app')
fakestore.image.attach(io: File.open('public/projects/fakestore.png'), filename: 'fakestore.png')
fakestore.tecnologies << next_js
fakestore.tecnologies << styled_components
fakestore.tecnologies << typescript

#set document(
  title: "Your Name – CV",
  author: "Your Name",
  keywords: ("Job Title", "Skill", "Skill"),
  date: none,
)
#set page(paper: "a4", margin: (x: 1.5cm, y: 1cm))
#set text(font: "Lato", size: 10pt, lang: "en", region: "AU", hyphenate: false)
#set par(justify: false, leading: 0.5em, spacing: 0.6em)
#set list(indent: 0.4em, body-indent: 0.5em, spacing: 0.35em)

#show link: set text(fill: rgb("#1a4d8f"))
#show heading.where(level: 1): it => block(
  above: 0.9em,
  below: 0.6em,
  width: 100%,
  stroke: (bottom: 0.6pt),
  inset: (bottom: 3pt),
  text(size: 12pt, weight: "bold", it.body),
)
#show heading.where(level: 2): it => block(
  above: 0.8em,
  below: 0.45em,
  text(size: 10pt, weight: "bold", it.body),
)

#let company(name, above: 1.8em) = block(above: above, below: 0.4em, strong(name))

#let dated(body, dates, below: 0.5em) = block(above: 0.4em, below: below)[#body #h(1fr) #strong(dates)]
#let job(title, dates, below: 0.9em) = dated(emph(title), dates, below: below)

#align(center)[
  #text(size: 16pt, weight: "bold")[Your Name]
  #v(0em)
  #link("https://www.google.com/maps/search/?api=1&query=City%2C+Country")[City, Country] |
  #link("tel:+61491570006")[+61 491 570 006] |
  #link("mailto:you@example.com", "you@example.com") |
  #link("https://example.com")[example.com]
]

= Summary

Two to four sentences on who you are and what you do: your role, years of experience, the areas you're strongest in and the kind of work you want next. Mention what you're learning if it supports the roles you're applying for.

= Professional Experience

#company(above: 1em)[Company Name]
#job(below: 0.5em)[Current Job Title][Month Year – Present]

== Theme of related work

- Start each bullet with a verb and end with the result, quantified where you can: cut deploy time by 75%, from 40 minutes to 10 minutes.
- Say what you built and why it mattered, not just which tools you used.
- Group bullets under level 2 headings when one role covers several distinct areas.

== Another theme

- Name the scale: number of users, teams, services, environments or requests handled.
- Credit shared work honestly: "led", "built" and "contributed to" mean different things.

#company[Company Name]
#job[Earlier Job Title][Month Year – Month Year]

- Keep earlier roles shorter, with the two to four achievements most relevant to the job you're applying for.
- Repeat the company name when a promotion changed what you did, so each role keeps its own dates and bullets.

#company[Previous Company]
#job(below: 0.4em)[Senior Job Title][Month Year – Month Year]
#job[Job Title][Month Year – Month Year]

- Stack titles under one company when you were promoted but the work stayed much the same.
- Clients: Client One, Client Two, Client Three.

= Technical Skills

#let skill(category, items) = block(above: 0.45em, below: 0.45em)[*#category:* #items]

#skill[Category][Skill, Skill, Skill]
#skill[Languages][Language, Language, Language]
#skill[Tools][Tool, Tool, Tool; Technique, Technique]
#skill[Practices][Practice, Practice, Practice]

= Education, Training and Awards

#dated[*University Name* – Degree][Year – Year]
#dated[*Course or Certification* – Detail][Year]
#dated[*Award Name* – Detail][Year]

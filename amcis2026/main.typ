#import "@preview/ambivalent-amcis:0.1.1": amcis


#let authors_list = (
// Authors as ([Author Name], [Affiliation], "email@address.com"),
  ([Colton Grimshaw], [Brigham Young University], "alice@other.edu"),
  ([Jacob Dishman], [Brigham Young University], "bob@example.org"),
    ([Ryan Schuetzler], [Brigham Young University], "ryan.schuetzler@byu.edu"),

)


#show: amcis.with(
  title: [AI Study Buddy],
  short-title: [AI Study Buddy], // Hidden for initial submission
  // conference-line: [Thirty-second Americas Conference on Information Systems, Reno, 2026], // This is the default. Can be updated for future years
  paper-type: "Emergent Research Forum (ERF) Paper", // "Full Paper" or "Emergent Research Forum (ERF) Paper"
  abstract: [In this document we describe the formatting requirements for the Proceedings of the AMCIS Conference.  Please review this document carefully. You can use this document as a template and copy/paste your paper content here (this might be the best or easiest way). Please be sure to adhere to the formatting requirements. Submission must be made in PDF format. Abstracts should be no more than 150 words, as the abstract will also be used for the conference program.], // Hidden for initial submission
  keywords: ([Guides], [instructions], [length], [conference publications]),
  // acknowledgements: [Please do #underline[_not_] add acknowledgements to your original submission because it may identify authors. Add any acknowledgements to the revised, camera-ready version of your paper.
  //], // Hidden for initial submission
  authors: authors_list,
  bib: bibliography("./zotero.bib", style: "new-apa.csl", title: none),
  camera-ready: false, // true for camera-ready, false for initial submission
)


= Introduction
Emergent Research Forum (ERF) papers report on research that is still in progress. Like completed research, ERF papers will be submitted to a minitrack for double blind review. Upon acceptance, ERF papers will be presented by authors while interested participants gather to share ideas and discuss topics of mutual interest. ERF papers must not exceed 5 pages all-inclusive (approx. 2,500 words) and must conform to the AMCIS 2026 submission template. ERF papers that are accepted will be published in their entirety in the conference proceedings.

= Literature Review
The rapid advancement of artificial intelligence, particularly large language models, has transformed the landscape of human–technology interaction across business, education, and healthcare domains. In business and management contexts, chatbot research has grown substantially since 2018, with increasing attention to artificial intelligence, trust, customer experience, and emerging large language model applications (Rejeb & Rejeb, 2025). As generative AI systems become more integrated into educational and workplace settings, understanding how these systems influence human behavior, focus, and productivity is increasingly critical (Aldhafeeri et al., 2025). While much existing work has examined chatbot architecture, evaluation, and deployment across domains (Singh & Namin, 2025), there remains limited research on how AI systems influence students’  accountability and task persistence in self-study environments. This gap is particularly prominent in higher education, where students frequently struggle with distraction, motivation, and sustained attention. This study draws on research in chatbot and LLM development and evaluation, AI in educational and self-study contexts, body doubling and co-presence as self-regulation strategies, ADHD and digital productivity challenges, and socially assistive robots and long-term human to robot interaction, which together provide the conceptual foundation for examining how AI systems, whether embodied as physical robots or delivered through conversational interfaces, may influence students’ focus, productivity, and engagement.
Chatbots have evolved from rule-based systems to sophisticated conversational agents capable of generating human-like responses (Behrend & Landers, 2025). Contemporary LLM-based chatbots are deployed across domains including healthcare, business services, and education (Aldhafeeri et al., 2025). Their increasing realism and conversational fluency raise important questions about how users perceive and are influenced by these systems. However, alongside their growing capabilities, concerns have emerged regarding bias, reliability, and ethical deployment. Singh and Namin’s comprehensive survey emphasizes the lack of a standardized evaluation framework for LLM-based chatbots and highlights the need for systematic testing (Singh & Namin, 2025). Without rigorous validation, chatbots may inadvertently demonstrate biases or generate misleading content. From a research design perspective, Behrend and Landers propose a decision-making framework for integrating LLMs into experimental contexts, identifying use cases such as LLMs as conversation partners or research companions (Behrend & Landers, 2025). They emphasize the importance of iterative testing, prompt engineering, and validity auditing when studying participant–AI interactions. Their framework underscores that even subtle implementation differences can meaningfully affect participant behavior and internal validity. Together, this body of work establishes that while LLM-based systems are widely adopted, careful attention must be paid to their evaluation, implementation, and behavioral impact.
Within higher education, self-study requires strong self-regulation, including goal setting, time management, and sustained attention. Cho et al. examine how a social robot providing goal reminders and emotional encouragement influenced students during self-study tasks (Cho et al., 2025). Their findings suggest that robots offering goal-oriented reminders and emotional support increased perceived focus, ease of use, and willingness for future engagement compared to mere physical presence. Importantly, participants’ perception of the robot predicted their goal achievement. These findings align with broader evidence that peer support and co-presence enhance accountability and productivity in academic settings. Yet many students face barriers to traditional peer study groups, including social anxiety or other constraints. AI systems, particularly conversational and social robots, may offer scalable alternatives capable of delivering structured goal reminders and social reinforcement. Beyond robotics, digital tools have been developed to support time management and social connection during periods of isolation. For example, Ang and Lim describe a time management and social networking application designed to support students’ motivation and academic functioning during the COVID-19 pandemic (Ang & Lim, 2024). Their work highlights the connection between social connection, anxiety reduction, and academic performance. Collectively, these studies suggest that AI systems may enhance self-study not merely by delivering information, but by creating accountability and simulating social presence.
Body doubling, defined as using the presence of another person to initiate and sustain task engagement, has emerged as a community-driven strategy among neurodivergent individuals (Eagle et al., 2024). Eagle et al. describe body doubling as a continuum of co-presence across time and space, including in-person, remote, live, and recorded forms. Participants report using body doubling to generate momentum, remain focused, and complete tasks ranging from studying to household chores. In higher education contexts, Arnold et al. document how ADHD students develop collaborative and community-based strategies to manage academic demands (Arnold et al., 2025). These practices extend beyond formal accommodations and highlight the role of shared accountability and social reinforcement. Recent design work has explored how AI systems might simulate body doubling interactions. Eugenia’s thesis investigates an AI-powered chatbot designed to replicate body doubling to support task initiation and completion for individuals with ADHD (Eugenia, 2024). Findings from the study emphasize the importance of inclusivity, personalization, and participatory design in creating AI-based assistive technologies. Together, these studies suggest that the mechanism to improve productivity may not solely be informational assistance but rather the presence of a social other that enhances accountability and focus, real or simulated.
ADHD is associated with challenges in time management, task initiation, sustained attention, and emotional regulation (Arnold et al., 2025). In digital contexts, debates surrounding digital disconnection and screen time frequently frame individuals with ADHD as primary beneficiaries of device restrictions (Beattie, 2025). However, Beattie argues that digital disconnection policies may overlook the nuanced ways neurodivergent individuals rely on technology for productivity and community support. Rather than simply reducing digital exposure, emerging research suggests that structured digital tools and co-presence strategies may better support self-regulation and productivity. This perspective reframes technology not solely as a source of distraction, but as a potential mechanism for productivity when appropriately designed.
Embodied AI introduces an additional dimension: physical presence. Kidd and Breazeal’s study on long-term human–robot interaction demonstrates that participants engaged nearly twice as long with a sociable robot compared to a standalone computer or paper-based intervention (Kidd & Breazeal, 2008). Participants also developed stronger relational bonds with the robot, suggesting that embodiment and social cues may enhance sustained engagement. This line of work implies that physical robots may generate stronger accountability or relational investment than screen-based systems alone. If social presence predicts task persistence, then differences between embodied and disembodied AI systems may meaningfully affect student productivity outcomes (Cho et al., 2025).
Across domains, AI systems have demonstrated the capacity to provide informational assistance, emotional encouragement, and social presence. Research on chatbots and LLMs has largely focused on architecture, evaluation, and deployment (Aldhafeeri et al., 2025; Singh & Namin, 2025), while studies on social robots have examined short-term learning contexts (Cho et al., 2025). Parallel research on body doubling and ADHD highlights the importance of co-presence and accountability in sustaining focus (Arnold et al., 2025; Eagle et al., 2024). However, limited research directly compares embodied AI (e.g., physical robots), conversational AI (e.g., chatbots), and control conditions within university self-study contexts to examine their differential effects on task engagement, focus, and productivity. Moreover, few studies integrate perspectives from self-regulation, social presence, and neurodivergent adaptive strategies into AI-supported academic productivity research. The present study addresses this gap by examining how different forms of AI presence, such as a physical robot, conversational chatbot, and no-AI control, affect university students’ focus, productivity, and engagement during self-study tasks. By integrating insights from human–robot interaction, LLM research design, and body doubling theory, this work aims to contribute to both the information systems and educational technology literature on AI-mediated productivity support.

== Social Presence Theory
awegaosdghoae

== Body Doubling
 aegnaosegdh

== Zimmerman's Self-Regulated Learning Framework
laskdfjaowefoanweoa

= Methodology
In this study, we will XYZ

== Measures
We'll measure 

#pagebreak()

= This stuff is here as examples



== Inserting Images
Using figures in Word is a recipe for disaster. You have to do hacky workarounds like putting the figure in a table just to keep the caption and figure together. With Typst and other formatting tools, that's a thing of the past. Just use the built-in `#figure` function to easily place a figure, and automatically number it (with a caption!). You can even reference the figure with an in-text cross reference like so: Look at the cool robot in @pepper.

#figure(image("assets/pepper.jpg", width: 50%),
caption: [What a beautiful robot.]) <pepper> // The <pepper> is the name used for cross-referencing (with @pepper in the paragraph above)

== Table Style
Inserting a table in the text can work well. See Table 1 below. If you do not use this style, then you may want to adjust the vertical spacing of the text in the tables. (In Word, use Format | Paragraph… and then the Line and Page Breaks tab. Generally, text in each field of a table will look better if it has equal amounts of spacing above and below it, as in @treatments.)

// If you don't need a label for your table,
// you don't need to put it in a figure.
// Honestly Typst table formatting is kinda rough, but you can
// use online tools like https://www.latex-tables.com/?format=typst&force
// to make it slightly less horrible.
// Packages like pypst for python or gt for R can output Typst-formatted tables.
#figure(
  table(
    columns: (auto, auto, auto),
    align: (right, left, left),
  table.header([], [*Treatment 1*], [*Treatment 2*]),
  [*Setting A*], [125], [95],
  [*Setting B*], [85], [102],
  [*Setting C*], [98], [85]
  ),
  caption: [A Very Nice Table]
) <treatments> // <treatments> is again used for cross-referencing.

== References and Citations
Aldhafeeri, L., Aljumah, F., Thabyan, F., Alabbad, M., AlShahrani, S., Alanazi, F., & Al-Nafjan, A. (2025). Generative AI Chatbots Across Domains: A Systematic Review. Applied Sciences, 15(20). https://doi.org/10.3390/app152011220
Ang, J. H., & Lim, E. L. (2024). A social networking and time management app to assist students during the COVID-19 pandemic. 070001. https://doi.org/10.1063/5.0183037
Arnold, V. X., Min, A., Bonang, C., Park, S., Hayes, G. R., & Piper, A. M. (2025). Beyond Individual Accommodations: The Collaborative Practices of ADHD Students in Post-Secondary Education. Proceedings of the 27th International ACM SIGACCESS Conference on Computers and Accessibility, 1–14. https://doi.org/10.1145/3663547.3746324
Beattie, A. (2025). ADHD and digital disconnection: Exploring inclusive and practical approaches. Media, Culture & Society, 47(4), 805–814. https://doi.org/10.1177/01634437251326482
Behrend, T. S., & Landers, R. N. (2025). Participant Interactions with Artificial Intelligence: Using Large Language Models to Generate Research Materials for Surveys and Experiments. Journal of Business and Psychology, 40(6), 1275–1297. https://doi.org/10.1007/s10869-025-10035-6
Cho, H. C., Cha, G.-E., Liu, Y., & Jeong, S. (2025). Motivating Students’ Self-study with Goal Reminder and Emotional Support (arXiv:2510.23860). arXiv. https://doi.org/10.48550/arXiv.2510.23860
Eagle, T., Baltaxe-Admony, L. B., & Ringland, K. E. (2024). “It Was Something I Naturally Found Worked and Heard About Later”: An Investigation of Body Doubling with Neurodivergent Participants. ACM Trans. Access. Comput., 17(3), 16:1-16:30. https://doi.org/10.1145/3689648
Eugenia, M. (2024). Leveraging AI for Body Doubling to Assist Individuals with ADHD in Managing Task Initiation and Completion. https://urn.kb.se/resolve?urn=urn:nbn:se:mau:diva-73069
Kidd, C. D., & Breazeal, C. (2008). Robots at home: Understanding long-term human-robot interaction. 2008 IEEE/RSJ International Conference on Intelligent Robots and Systems, 3230–3235. https://doi.org/10.1109/IROS.2008.4651113
Rejeb, A., & Rejeb, K. (2025). A bibliometric investigation of chatbot applications in business and management. Discover Applied Sciences, 7(10), 1107. https://doi.org/10.1007/s42452-025-07770-z
Singh, S. U., & Namin, A. S. (2025). A survey on chatbots and large language models: Testing and evaluation techniques. Natural Language Processing Journal, 10, 100128. https://doi.org/10.1016/j.nlp.2025.100128


References should be listed alphabetically by author name at the end of the paper and formatted in conformance with #link("https://apastyle.apa.org/products/publication-manual-7th-edition")[APA 7th edition]. References must be complete, i.e., include, as appropriate, volume, number, month, publisher, city and state, editors, last name and initials of all authors, page numbers, etc.  If you use EndNote, be aware that different versions of the software change the styles, creating some inconsistencies. Your references should comprise only published materials accessible to the public. Proprietary information may not be cited. In text citations can be done with @ang2024Social, @beattie2025ADHD, or #cite(<arnold2025Individual>, form: "prose"), for example. Or if you mention the authors in the text, you can do just the year as in "Schuetzler and colleagues (#cite(<cho2025Motivating>, form: "year")) may have written the best paper ever."
// The @Ahlers2013 and others are bibtex citation keys from the references.bib

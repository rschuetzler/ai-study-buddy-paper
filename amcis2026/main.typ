#import "@preview/ambivalent-amcis:0.1.1": amcis
#import "@preview/drafting:0.2.2": inline-note, margin-note


#let authors_list = (
// Authors as ([Author Name], [Affiliation], "email@address.com"),
  ([Jacob Dishman], [Brigham Young University], "disjacob@byu.edu"),
  ([Colton Grimshaw], [Brigham Young University], "cmgrims@byu.edu"),
  ([Garrett Ashcroft], [Brigham Young University], "garrettashcroft@gmail.com"),
  ([Ryan Schuetzler], [Brigham Young University], "ryan.schuetzler@byu.edu"),

)

#let abstract = [ 
  This study will examine whether physical embodiment enhances the effectiveness of AI as a study companion. Drawing on Social Presence Theory and body doubling, we compare four conditions in a 30-minute university self-study session: (1) chatbot on a participant’s laptop, (2) chatbot on a researcher-provided laptop, (3) an embodied AI robot (Reachy Mini), and (4) no-AI control. Across AI conditions, the system provides only goal acknowledgment and time tracking to isolate presence effects from active intervention. Using survey measures and interviews, we will assess perceived productivity, focus, engagement, and accountability. Findings will clarify how embodied versus conversational AI presence shapes academic study behaviors.
]

#show: amcis.with(
  title: [AI Study Buddy: Does Physical Presence Help?],
  short-title: [AI Study Buddy],
  // conference-line: [Thirty-second Americas Conference on Information Systems, Reno, 2026], // This is the default. Can be updated for future years
  paper-type: "Emergent Research Forum (ERF) Paper", // "Full Paper" or "Emergent Research Forum (ERF) Paper"
  abstract: abstract,
  keywords: ([Guides], [instructions], [length], [conference publications]),
  // acknowledgements: [Please do #underline[_not_] add acknowledgements to your original submission because it may identify authors. Add any acknowledgements to the revised, camera-ready version of your paper.
  //],
  authors: authors_list,
  bib: bibliography("./zotero.bib", style: "new-apa.csl", title: none),
  camera-ready: false, // true for camera-ready, false for initial submission
)


= Introduction
// Artificial intelligence (AI), particularly large language models (LLMs) and conversational agents, is increasingly embedded in students’ everyday academic work. While existing research has largely focused on AI as a source of informational support, less is known about how the presence of AI systems influences student focus and productivity during independent study. As AI systems become more socially interactive and embodied, understanding their behavioral and psychological impact extends beyond performance metrics to questions of accountability, engagement, and perceived co-presence. For information systems, this shift raises important questions about how different forms of AI presence shape human behavior in technology-mediated environments.

Self-study contexts present a persistent challenge in higher education, where students frequently struggle with task initiation, sustained attention, and distraction @fichten2022What. Prior work in human-robot interaction suggests that embodiment and social cues may increase relational engagement and enjoyment compared to screen-based systems @leeArePhysicallyEmbodied2006 @hoffmannInvestigatingEffectsPhysical2013. Similarly, emerging research on AI companions and social robots indicates that goal acknowledgment and emotional signaling can enhance perceived focus and motivation @cho2025Motivating. However, most prior studies combine AI presence with active interventions such as reminders or coaching, making it difficult to isolate whether productivity gains stem from informational assistance or from perceived social presence. Moreover, limited research directly compares embodied AI, conversational AI, and control conditions within authentic university self-study settings.

Our proposed study will address this gap by examining how different forms of AI presence influence university students’ focus, productivity, and engagement during a self-study session. We will compare four conditions: (1) an AI chatbot on a participant’s personal laptop; (2) an AI chatbot on a separate, researcher-provided laptop; (3) embodied AI via a Reachy Mini robot; and (4) a no-AI control condition. In our initial study, the AI will provide only time tracking and goal setting assistance, allowing us to isolate the effect of AI presence rather than motivational intervention. Drawing on Social Presence Theory and the concept of body doubling, this research contributes to information systems scholarship by disentangling presence from functionality and advancing understanding of how AI companions may shape academic productivity behaviors.


= Literature Review
The rapid advancement of artificial intelligence, particularly large language models (LLMs), has transformed the landscape of human-technology interaction across business, education, and healthcare domains. In business and management contexts, chatbot research has grown substantially since 2018, with increasing attention to artificial intelligence, trust, customer experience, and emerging large language model applications @rejeb2025Bibliometric. As generative AI systems become more integrated into educational and workplace settings, understanding how these systems influence human behavior, focus, and productivity is increasingly critical @aldhafeeri2025Generative.

// Chatbots have evolved from rule-based systems to sophisticated conversational agents capable of generating human-like responses @behrend2025Participant. Contemporary LLM-based chatbots are deployed across domains including healthcare, business services, and education @aldhafeeri2025Generative. Their increasing realism and conversational fluency raise important questions about how users perceive and are influenced by these systems. However, alongside their growing capabilities, concerns have emerged regarding bias, reliability, and ethical deployment.

Digital tools have been developed to support time management and social connection during periods of isolation. #cite(<ang2024Social>, form: "prose") propose a time management and social networking application to support students’ motivation and academic functioning during the COVID-19 pandemic. Their work highlights the connection between social connection, anxiety reduction, and academic performance. Embodied AI introduces an additional dimension: physical presence. #cite(<kidd2008Robots>, form: "prose") demonstrate that participants engaged nearly twice as long with a sociable robot compared to a standalone computer or paper-based intervention. Participants also developed stronger relational bonds with the robot, suggesting that embodiment and social cues may enhance sustained engagement. This line of work implies that physical robots may generate stronger relational investment than screen-based systems alone.

#cite(<cho2025Motivating>, form: "prose") examine how a social robot providing goal reminders and emotional encouragement influenced students during self-study tasks. Their findings suggest that robots offering goal-oriented reminders and emotional support increased perceived focus, ease of use, and willingness for future engagement compared to mere physical presence. Importantly, participants’ perception of the robot predicted their goal achievement.

== Social Presence Theory
Social Presence Theory proposes that the degree to which a communication medium conveys the sense of another “real” person influences interpersonal engagement, motivation, and behavioral outcomes @Short1976. Originally developed in communication research, the theory suggests that perceived social presence increases feelings of connection, accountability, and relational investment. In educational contexts, higher levels of perceived social presence have been associated with increased participation, engagement, and persistence @richardson2003Examining. 

Within AI-mediated environments, embodiment and conversational abilities may enhance perceived social presence. Physical robots, for example, may convey stronger social cues through movement, gaze, and spatial location, potentially increasing accountability compared to disembodied chatbots @lukasik2025Robots. Even text-based conversational agents may evoke social presence if users attribute intentionality to them @schuetzler2020Impact. In this study, Social Presence Theory provides a lens for understanding how embodied versus conversational AI may differentially influence student focus and productivity.

Physically embodied agents have been shown to generate stronger perceptions of co-presence, warmth, and relational engagement than screen-based counterparts, even when the underlying conversational capabilities are held constant @leeArePhysicallyEmbodied2006 @hoffmannInvestigatingEffectsPhysical2013. These findings suggest that an embodied robot, by occupying shared physical space and offering nonverbal social cues such as movement and gaze, will be perceived as more socially present than a chatbot displayed on a screen. Furthermore, we expect that even among screen-based agents, spatial separation matters: a chatbot running on a dedicated device may be perceived as a more distinct social entity than one embedded within the student's own workspace, where it competes for attention alongside other applications and browser tabs. Accordingly, we propose the following hypotheses:

_H1: An AI robotic agent will elicit greater social presence than computer-based agents._

_H2: An AI agent on a dedicated laptop will elicit greater social presence than from the student's computer._


== Body Doubling 
Body doubling refers to the practice of using the presence of another person to initiate and sustain task engagement. Whether in person or virtual, body doubling provides accountability for productivity that can help knowledge workers focus on a task @eagle2024It. It is most frequently discussed within neurodivergent communities and particularly among individuals with ADHD. 

Research on ADHD students in post-secondary education further demonstrates the importance of collaborative strategies in managing academic demands @arnold2025Individual. Rather than relying solely on formal accommodations, students frequently develop shared accountability practices to sustain motivation and focus. Emerging design research suggests that AI systems may simulate body doubling interactions by providing goal reminders, check-ins, or conversational engagement @mazanik2024Leveraging. This study builds on the concept of body doubling by examining whether AI, either embodied as a robot or delivered through a chatbot, can replicate or approximate the accountability mechanisms traditionally produced through human co-presence. Further, we will investigate the impact of physical co-presence through the comparison of the robot and chatbot conditions.

Although body doubling and social presence emerge from distinct literatures, they converge on a shared mechanism: the perception that another entity is present and attentive. Body doubling research suggests that the mere presence of another person can provide sufficient accountability to sustain task engagement @eagle2024It. Tools like Focusmate (https://www.focusmate.com/) allow users to connect to strangers to do this. Social Presence Theory offers an explanation for why this effect occurs: individuals who perceive a communication partner as more "real" experience greater feelings of connection and accountability @Short1976. Applied to AI-mediated study environments, this theoretical integration suggests that AI systems perceived as more socially present should function as more effective body doubles, generating stronger accountability and sustained focus. We therefore hypothesize:

While others have investigated the use of robots as motivational companions @oconnell2024Design @mazanik2024Leveraging @cho2025Motivating, we are the first to directly compare the physically embodied robot to virtual presence through a laptop-based chatbot.

_H3: Agents with greater social presence will elicit a greater body-doubling effect, measured by improved ability to focus during a study task._

= Methodology

== Participants

We plan to recruit 100 students who are (1) 18 years or older, (2) fluent in English, and (3) enrolled at a large private university in the United States. Twenty-five participants will be assigned to each of the four conditions: AI chatbot on participant's laptop, AI chatbot on researcher-provided laptop, AI on Reachy Mini robot (see @reachy),  and control (no AI). 

== Study Procedure

Upon arrival at the research site, participants will be briefed on the overall study procedure and sign the informed consent form to participate in the study. Then they will be asked to complete a set of pre-study questions to collect information about their demographics and usual self-study behaviors and habits. They will also complete the Attentional Control Scale @judah2014Factor to assess individual differences in their ability to focus and shift attention. This measure allows us to examine whether participants' baseline attentional control moderates the effectiveness of AI presence on study outcomes.

#figure(image("assets/reachy.jpg", height: 40%),
caption: [The Reachy Mini robot]) <reachy>


Our study will be conducted in a quiet office space where participants can engage in self-study for thirty minutes under one of four experimental conditions. To capture students' realistic study behaviors, participants will be informed to bring their own study materials (e.g., homework assignment, study guide) prior to our study. While this introduces variability in study content, we will have students select their own study materials for more authentic and natural self-study behaviors.

In the AI on participant's laptop condition, participants will interact with a voice-based AI chatbot on their personal device. In the AI on researcher-provided laptop condition, participants will interact with an AI chatbot on a laptop provided by the research team. In the AI on Reachy Mini robot condition, participants will interact with the Reachy Mini robot equipped with conversational AI capabilities.  In the control condition, participants will study independently without any AI assistance or physical companion present.


For all three AI conditions, participants will begin by verbally stating their SMART goal (Specific, Measurable, Achievable, Relevant, Time-bound) to the AI system. The AI will acknowledge the goal and set a timer for the thirty-minute study session. During the study session, the AI will not provide any interventions, reminders, or support. At the conclusion of the thirty minutes, the AI will notify the participant that time has elapsed. This minimal-intervention approach differs from prior work in that it isolates the effect of AI presence and embodiment rather than active motivational support. The AI will then ask participants how their study session went in relation to their goal.

In the control condition, participants will be instructed to set their own SMART goal at the beginning of the session and will monitor their time using a standard timer provided by the researcher.

After the self-study session, participants will complete the post-study questionnaire and engage in a semi-structured interview to provide qualitative feedback on the overall study experience and their perception of the AI system or study environment. The interviews will be audio-recorded for transcriptions and data analysis.

= Data Collection

== Self-reported Measures
After the self-study session, participants will complete a post-study questionnaire to perceived stress and concentration on academic workload,  perceived productivity and concentration level during the self-study session, effectiveness of the AI companion (where applicable), and the acceptance of assistive robot scale developed by #cite(<heerink2008Influence>, form: "prose"), which measures the effectiveness of intervention, the system's perceived ease of use, perceived usefulness, perceived enjoyment, trust in the system, and overall satisfaction. For the control condition, participants will complete adapted versions of these scales that assess their self-study experience without reference to an AI system.

// == Post-study Interview

// At the end of the study, we will interview participants to obtain qualitative feedback on their perceived effectiveness of the study environment and the overall study procedure. The interview will include questions regarding participants' overall experience, the perceived helpfulness of the AI system (where applicable), and the effect of the study setup on their study habits, mood, or stress levels. Participants will also be asked to provide feedback on potential future improvements and their willingness to use similar systems in actual study contexts.

== Data Analysis

Participants' post-questionnaire responses will be analyzed using ANOVA to compare responses across the four experimental conditions. We will examine differences in perceived productivity, concentration, satisfaction, and other measured variables between conditions.

// == Behavioral Annotations and Analyses

// We will annotate participants' behaviors observed during the study sessions based on the recorded interaction footage and transcription data. We will manually annotate the following participant behaviors: (1) the level of SMART goal achievement, (2) participants' human-like perception of the AI system (where applicable), and (3) overall explicit affect and emotion observed throughout the study session.

// We will categorize each participant into one of three achiever types: under-achiever, those who did not complete the self-study goal; exact-achiever, those who completed the exact amount of their goal; and over-achiever, those who completed their initial goal and conducted additional self-study tasks. We will use post-study survey responses and review interaction transcriptions to verify goal achievement.

// For the three AI conditions, we will annotate participant behaviors that suggest they perceived the AI as a "social other." Examples of such behaviors include asking the AI questions beyond goal-setting, exploring the AI's capabilities, and using verbal or non-verbal social communications to the AI. 

// == Qualitative Analysis on Post-study Interview Data

// We will conduct a thematic analysis on the post-study interview data to investigate participants' engagement, focus, and motivation during the study sessions, and their attitudes toward the AI systems or study environment. Two independent researchers will extract themes from the transcripts. The final themes will be consolidated through in-depth discussion among the research team members.

= Conclusion
Body doubling is a valuable technique used by self-motivated individuals to improve their work efficacy. We propose an experiment to study the effectiveness of AI interventions as body doubling companions. Our study will compare laptop-based chatbots and robot-embodied chatbots to determine the value of physical presence in body doubling, and the ability of an AI tool to improve productivity on knowledge tasks.

// = This stuff is here as examples - uncomment to see how the figure, table, or citations work.

// == Inserting Images
// Using figures in Word is a recipe for disaster. You have to do hacky workarounds like putting the figure in a table just to keep the caption and figure together. With Typst and other formatting tools, that's a thing of the past. Just use the built-in `#figure` function to easily place a figure, and automatically number it (with a caption!). You can even reference the figure with an in-text cross reference like so: Look at the cool robot in @pepper.

// #figure(image("assets/pepper.jpg", width: 50%),
// caption: [What a beautiful robot.]) <pepper> // The <pepper> is the name used for cross-referencing (with @pepper in the paragraph above)

// == Table Style
// Inserting a table in the text can work well. See Table 1 below. If you do not use this style, then you may want to adjust the vertical spacing of the text in the tables. (In Word, use Format | Paragraph… and then the Line and Page Breaks tab. Generally, text in each field of a table will look better if it has equal amounts of spacing above and below it, as in @treatments.)

// // If you don't need a label for your table,
// // you don't need to put it in a figure.
// // Honestly Typst table formatting is kinda rough, but you can
// // use online tools like https://www.latex-tables.com/?format=typst&force
// // to make it slightly less horrible.
// // Packages like pypst for python or gt for R can output Typst-formatted tables.
// #figure(
//   table(
//     columns: (auto, auto, auto),
//     align: (right, left, left),
//   table.header([], [*Treatment 1*], [*Treatment 2*]),
//   [*Setting A*], [125], [95],
//   [*Setting B*], [85], [102],
//   [*Setting C*], [98], [85]
//   ),
//   caption: [A Very Nice Table]
// ) <treatments> // <treatments> is again used for cross-referencing.

// == References and Citations

// Leaving this comment for examples of how to do different types of citations:

// - Normal in-text: @aldhafeeri2025Generative
// - Authors' names in prose: #cite(<aldhafeeri2025Generative>, form: "prose")
// - Just the year: #cite(<aldhafeeri2025Generative>, form: "year") (add your own parentheses)
// - Adding a page number: #cite(<aldhafeeri2025Generative>, supplement: "p. 12")
// // - Adding something before... unfortunately not an easy way to do that yet. If we 
// //    need it, I can work on a macro to make it possible: #cite(<schuetzler2022Design>, )
// // If there's just one, we could do this. Not ideal, but it works:
// - (e.g., #cite(<aldhafeeri2025Generative>, form:"author"), #cite(<aldhafeeri2025Generative>, form:"year"))

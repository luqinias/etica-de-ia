## Introduction

During the COVID-19 pandemic, governments have struggled to find effective policy-making strategies for exiting lockdown in a safe way. According to epidemiologists, opening up society requires efficient tracking, tracing, and monitoring. In many cases, this has led to the utilization of various tracing and tracking apps. These apps have raised several concerns about privacy and security. Critics have seen them as the first steps towards the algorithmic surveillance of citizens.

In London, authorities decided to try something new. Together with scientists, they developed methods for “capturing activity over London” to better understand the city’s level of activity. In a project called [Odysseus](https://www.turing.ac.uk/research/research-projects/project-odysseus-understanding-london-busyness-and-exiting-lockdown), authorities get information about the distribution of activities in London by combining machine learning algorithms, statistical time-series analysis, and image processing. This information about the activity in the streets of London can be utilized for the safe reopening of streets and for public health planning.

![london image](img/london-01.svg)

In Odysseus, the data comes from a wide range of sources. Odysseus combines aggregated, anonymized mobile phone data, anonymized credit card transactions, satellite navigation data, and data from sensors and traffic cameras in the streets. This data is used to create counts of vehicles, cyclists and pedestrians, and to indicate the density and impacts of social distancing. Special attention is paid to the anonymization of data so that individuals cannot be identified.

In this chapter we will look at human rights. The right for a safe environment is one of these. Odysseus provides an example of how AI can be used in a way that respects and promotes the right to safety or to a healthy environment. At the same time, the project must take other rights – such as the right for privacy – into account. In London these concerns were taken seriously. To secure privacy, Odysseus is designed in a way that all the data is anonymized and individuals cannot be identified from the images taken by the traffic cameras.

Privacy and security have raised a lot of media attention. They are important, but it’s necessary to consider the impact of AI on the full spectrum of fundamental human rights and freedoms, too. How will AI impact on the right to education and work, or for a fair trial, to fair and open elections, to freedom of speech, and to assembly and demonstration? And what about special groups, such as children? But first, let’s discuss what human rights are.

## What are human rights?

Human rights form the foundation of the current ethical guidelines and principles of AI. This makes human rights a fundamental component of contemporary AI ethics. As rights, human rights are **universal**: all humans are entitled to have them. One does not have to be a particular kind of person or a member of some specific community to have human rights.

Human rights are **norms** that protect all people, everywhere from political, legal, and social abuses. They include the following:

* **Civil and political rights**, such as the right to life, liberty, and property, freedom of expression, pursuit of happiness, and equality before the law
* **Social, cultural and economic rights**, including the right to participate in science and culture, the right to work, and the right to education

The role of human rights is to protect people's ability to form, construe, and pursue their own conceptions of a worthwhile life – it's not just about the ability to live “in liberty, happiness and well-being”.

::: {.nota}

#### What is a human right?

A human right is a norm which can exist on different levels:
* a shared norm of actual human moralities
* a justified moral norm supported by strong reasons
* a legal right at the national level (where it might be referred to as a “civil” or “constitutional” right)
* a legal right within international law

#### What is the Universal Declaration of Human Rights?
[The Universal Declaration of Human Rights](https://www.un.org/en/about-us/universal-declaration-of-human-rights) (UDHR) is a document which was drafted by representatives with different legal and cultural backgrounds from all regions of the world. The declaration was proclaimed by the United Nations General Assembly in Paris on 10 December 1948 (General Assembly resolution 217 A) as a common standard of achievements for all peoples and all nations.

:::

Conceptually, human rights are grounded in agency and autonomy (Gewirth 1982). They have an ethical priority: if they compete with other considerations such as economic wealth, national stability or some other factor, human rights should be prioritized. In the context of AI, this prioritization implies the following requirements:

* AI applications that could clearly violate human rights should not be used
* AI applications that prevent people from enjoying their human rights or actively put them at risk of human rights violations should not be used

However, human rights have certain context-sensitive properties that allow individuals to prioritize a specific human right if needed. Some rights are more fundamental than the others. For example, when the right to life conflicts with the right to privacy, the right to privacy will generally be outweighed.

In recent years, privacy and security concerns have dominated the discussion on AI and human rights. Emerging combinations of big data analytics, surveillance technologies and developing biometric recognition methods have recently received significant media and policy attention. Also, the right to equality and inclusion has raised a lot of public discussion. In the next section, we’ll take a brief look at these discussions.

## Examples of human rights: privacy, security, and inclusion

### Privacy
Privacy concerns are raised, for example, by digital records which contain information that can be used  to infer sensitive attributes (age, gender or sexual orientation), preferences, or religious and political  views. Biometric data also raises privacy concerns, as it can reveal details of physical and mental health. Often the real worry is not the data itself, but the way the data can be used to manipulate, affect, or harm a person.

Ethically, privacy is related to personal autonomy and integrity. Following the principles set out by John Locke, a right to control our own personal lives has been seen as central to our autonomy. If that right is taken away, it violates something fundamental about our psychological and moral integrity.

::: {.filosofia}

Many have proposed the principle that people should have control over their own data – and that data concerning them should not be allowed to be used to harm or discriminate against them. According to some, this right to have “full control over one’s own data” should be a human right.

But what, exactly, is your “own data”? Is it the raw data, or the collected and analyzed data? If the data is used for secondary purposes, is it still your data? Or, as Wachter and Mittelstadt ([2019](https://osf.io/preprints/lawarxiv/mu2kf/)) remark, does the content of inferences that can be drawn from your data belong to your “own data”?

Wachter and Mittelstadt (2019) propose that the right for the control of your own data should be reformulated as a right for the “right to reasonable inferences”. According to them, it is crucial that we can also control the “high-risk inferences” that can be made about us through big data analytics. These inferences  are  privacy-invasive  or  reputation-damaging, or have low verifiability (in the sense of being predictive or opinion-based) while being used for important decisions.

:::

![london zoomed image](img/london-zoom.svg)

#### GDPR

The General Data Protection Regulation ([GDPR](https://gdpr.eu/what-is-gdpr/)) is a legal framework. It sets guidelines for the collection and processing of personal data from individuals who live in the European Union.

The GDPR's aim is to give individuals control over their personal data. Any information that relates to an individual who can be directly or indirectly identified is “personal data”. This includes names, social security numbers and email addresses. Location information, biometric data, ethnicity, gender, web cookies, and political or religious beliefs can also be personal data. Pseudonymous data (data that does not directly identify an individual but can be connected to them) can also fall under the definition if it’s easy to individuate someone from it.

The data subject must give specific, unambiguous consent to process the data. Consents must be “freely given, specific, informed and unambiguous.” Data subjects can withdraw previously given consent whenever they want. Children under 13 can only give consent with permission from their parent.

The GDPR recognizes several privacy rights for data subjects. Their aim is to give individuals more control over the data. Some of these rights are:
* The right to be informed (a person must be told about the use of their personal data)
* The right of access (it should be explained how someone's personal data is used)
* The right to rectification (a person has the right to be forgotten and the data deleted)
* The right to restrict processing (a person can deny the use of their personal data)

If you process data, then according to GDPR you have to do so according to protection and accountability principles. You must consider these data protection principles in the design of any new product or activity. The data protection principles are:

* **Lawfulness, fairness and transparency**: Processing must be lawful, fair, and transparent to the data subject
* **Purpose limitation**: You must process data for the legitimate purposes specified explicitly to the data subject when you collected it
* **Data minimization**: You should collect and process only as much data as absolutely necessary for the purposes specified
* **Accuracy**: You must keep personal data accurate and up to date
* **Storage limitation**: You may only store personally identifying data for as long as necessary for the specified purpose
* **Integrity and confidentiality**: Processing must be done in such a way as to ensure appropriate security, integrity, and confidentiality (for example by using encryption)
* **Accountability**: The data controller is responsible for being able to demonstrate GDPR compliance with all of these principles

According to GDPR, if you process data you’re also required to handle data securely by implementing “appropriate technical and organizational measures.”

#### How to protect privacy – data anonymisation methods

The GDPR permits organisations to collect anonymized data without consent, use it for any purpose, and store it for an indefinite time – as long as organisations remove all identifiers from the data. There are several techniques for data-anonymisation, including:

* **Generalization** is a method that deliberately removes some of the data to make it less identifiable. Data can be modified into a set of ranges or a broad area with appropriate boundaries. You can remove, for example, the street address while including the information about the town name. In this way, you can eliminate some of the identifiers while retaining a degree of data accuracy.

* **Pseudonymization** is a data management and de-identification method that replaces private identifiers – names, ID-codes – with fake identifiers or pseudonyms, for example replacing the identifier “Santeri” with “Saara”. Pseudonymization preserves statistical accuracy and data integrity. The modified data can be used while still protecting data privacy.

* **Synthetic data** is a method for using created artificial datasets instead of altering the original dataset. The process involves creating statistical models based on patterns found in the original dataset. You can use standard deviations, medians, linear regression or other statistical techniques to generate the synthetic data.

Data-anonymization can be challenging. There are also methods for “de-anonymization”. De-anonymization methods attempt to re-identify encrypted or obscured information. De-anonymization, also referred to as data re-identification, can, for example, cross-reference anonymized information with other available data in order to identify a person, group, or transaction.

### Safety and security
The right to safety is a norm protecting individuals from physical, social and emotional harms, including accidents and malfunctions. Security  means safety from malicious and intentional threats.

As a right, safety creates a moral obligation to design our products, laws and environment in such a way that safety can be protected even in unconventional circumstances or impairments. In terms of AI, safety has come to encompass several different conversations, including the following:

#### 1) AI as an existential threat

The conversation around AI as an existential threat takes a highly speculative and future-oriented stance towards artificial intelligence. It focuses on asking what kind of threats to humanity are posed by AI systems if they become too complex to control (this kind of “superintelligence” scenario is painted by thinkers such as Nick Bostrom and Ray Kurzweil).

However, the plausibility of a future of superintelligent AI has been called into question, both by philosophers and technologists. As things stand,  there is no reason to assume that superintelligence will emerge from developing contemporary algorithmic methods.

#### 2) Safety in AI

The second interpretation of safety in AI is the practical question of designing systems which behave in a safe and predictable manner. As AI systems are integrated into ever-widening areas of life, it becomes more important that the systems are well designed to account for the complexity of the world. A very practical and already existing example of this is lane guard technology, which uses machine learning to prevent cars from veering outside of their lanes. Machine learning researchers have found that some lane detection algorithms are quite easy to confuse with rogue road markings, causing the car to veer off the road by following the fake lane markings.

::: {.tecnica}

One could argue that the right to safety obligates technology producers to account for these kinds of scenarios: the fact that the environment was not ideal does not excuse the system malfunctioning. Machine learning researchers call this feature **robustness** – the capacity of the system to to work predictably under new and unpredictable circumstances.

:::

The ethically – and legally – significant question is “what are the acceptable limits to robustness?” It is certainly conceivable that there are a set of circumstances so incredible that even if the system’s safety cannot be assured, we can concede that “nobody could have realistically seen that coming”. Where this limit is, though, is a difficult problem, and definitely not one that is exclusive to AI or even technology.

Nonetheless, the progressive zeal that is attached to AI future visions has brought up questions regarding the limits of safety and the taming of environmental uncertainty in a way that is wholly new. An example of this can be found in the discussion around autonomous vehicles.

::: {.definicao data-titulo="Case: Caged pavements – AI safety and environmental uncertainty"}

A difficult problem for autonomous vehicles is the complex unpredictability of the urban traffic environment. While AI-driven vehicles are constantly being developed to include better ways to model their surroundings, even a small group of individuals – all performing their own movement goals within a shared space – will create a constellation that is difficult to predict. When technical solutions in the cars are too far off, another way to approach the issue is to contain the uncertainty in the environment.

In a New York Times column, consultant Eric A. Taub proposed a solution: by enclosing pavements in cages, with traffic-light-synced gates at crossings, the complex traffic environment is simplified to become more understandable to autonomous vehicles and therefore safer. However, this safety comes at an obvious cost: limiting the freedom of pedestrians, and a redistribution of accountability. This means we should look at the intersecting limits of the right of safety vs freedom. Which one is more important?

Or is this just a false dichotomy, brought about by a technical solution that was never very workable in the first place? A further interesting line of thought that can be traced here is the criminality of what in the United States is called “jaywalking”, or walking across the road at locations without zebra crossings. The concept of jaywalking did not exist until the roads were reconceptualized with motor vehicles as the primary users. How comparable is this to the thought of caging pavements?

:::

#### 3) Producing safety with AI

The third concept of safety and AI we will look at in this section is the production of safety through the use of AI. Can AI make the world safer? Can AI make the world feel safer? And safer for whom?

Robotization can provide an example of this concept in practice. The work of handling hazardous materials or working in hazardous environments can be delegated to robots, protecting the health of human (or animal) workers.

Another way certain forms of safety are produced through AI is through automated surveillance. AI-powered surveillance has manifested in many domains: in public spaces, in law-enforcement work through predictive policing, and in domestic life through products like Amazon’s Ring. Although surveillance cameras (CCTV) have existed and dominated public and semi-public spaces for decades, the ACLU argues that automation brings about a big qualitative shift in how surveillance functions. But what is so different?

“Imagine a surveillance camera in a typical convenience store in the 1980s. That camera was big and expensive, and connected by a wire running through the wall to a VCR sitting in a back room. There have been significant advances in camera technology in the ensuing decades — in resolution, digitization, storage, and wireless transmission — and cameras have become cheaper and far more prevalent.

“Still, for all those advances, the social implications of being recorded have not changed: when we walk into a store, we generally expect that the presence of cameras won’t affect us. We expect that our movements will be recorded, and we might feel self-conscious if we notice a camera, especially if we were doing anything that we feel might attract attention. But unless something dramatic occurs, we generally understand that the videos in which we appear are unlikely to be scrutinized or monitored.”

 -The Dawn of Robot Surveillance, ACLU

::: {.nota}

Constant surveillance produces **“chilling effects”**. That is, the awareness that our actions are constantly watched limits our true freedom to act in the world. Imagine that whenever you leave your house, you are tailed by two police officers. They never interact with you, just follow ten meters behind you. You will probably feel unsettled and unable to go about your day as you normally would. In this way, safety is sometimes at odds with personal freedom and privacy.

:::

Moreover, it is an open empirical question, to what extent AI surveillance is really producing safety. As the example of chilling effects illustrates, the existence of AI surveillance may itself contribute to a feeling of unsafety. Furthermore, it may directly contribute to actual unsafety and produce harm. AI-powered policing, for example, can lead to direct physical harm because of its predictive nature and the methods of enforcement. And when ubiquitous and automatic surveillance allows even the most petty transgressions to be surveilled and logged, it risks making the consequences of policing more damaging than the original crime.

With the disparate levels of policing, disparate methods of enforcement, and disparate levels of surveillance across communities, most clearly along racial dimensions, it becomes clear that AI surveillance creates a different kind of safety (and unsafety) for different people. Again, like before, the value of safety becomes entwined with other ethical values such as justice and non-discrimination.

#### 4) A safe and healthy environment: AI and climate change
Safety also means the right to a safe and healthy environment. Nowadays, this right is threatened by  climate change. The effects of climate change are already visible – storms, droughts, fires, and flooding have become more common, more frequent and more devastating. Global ecosystems are changing. They all impact the environment on which our existence depends. The report on climate change (2018) estimated that the world will face catastrophic consequences unless global greenhouse gas (GHG) emissions are eliminated within thirty years.

::: {.tecnica}

AI could be a powerful tool for tackling climate change. It can be used as a resource for monitoring, understanding, and predicting the consequences of climate change. AI can accelerate the development of more ecologically sustainable societies. It can be used to design green cities, environment-friendly transportation, to reduce the ecological impact of industry, and design equipment that can help study and maintain the diversity of ecosystems.

At the same time, many potential problems are associated with the deployment of AI – for instance, innovations that seek to reduce greenhouse gas emissions may actually increase energy consumption and emissions. Given the data and resource-intensive character of contemporary AI, the technology itself still struggles with energy consumption and carbon footprint. One must also pay attention to the environmental impact of raw material extraction for supporting the manufacturing of AI technologies, which can be significant.

:::

To summarize, safety plays into AI technologies in multiple different ways. These all raise questions about the balancing of normative values: while calls to make “AI for good” sound promising, in practice the enactment of rights and normative values in technological systems often collides with the plethora of conflicting interests and deep injustices existing in the world. When evaluating safety, it is then important to evaluate what other rights intersect in practice and ask, “safety for whom?”

  

  

## Inclusion and the gender divide

Inclusion means that all people, regardless of the characteristics that make them different — be it race, gender, sexuality, ability, or some other feature — have an equal right to fully participate in society.

#### Inclusion of disabled people

According to the World Health Organization (2018), more than a billion people live with disability. On the one hand, AI can marginalize and exclude disabled individuals even more. On the other hand, AI technologies have an enormous potential to promote the well-being of these people. AI could  “augment” and support humans with disabilities.

For example,  there are several tools for developing communication and literacy skills that might offer support with understanding those who have cognitive disabilities and/or complex speech and language difficulties (such as dementia, cerebral palsy, and autism). Moreover, the development of assistive technologies using AI, such as description of images for blind people, speech recognition, captioning for hearing impaired people, sign language recognition and creation for deaf people, multilingual text-to-speech options for reading text for those with cognitive disabilities including dyslexia, care robots for elderly people and mobility guides for visually impaired people provide other examples.

![smartphone](img/sp-too-big-rev.svg)
  </img>

#### Inclusion and the gender divide

Many technology researchers have paid attention to the “gender gap” or “the gender divide”. This gap has many faces. First, according to [Unesco](https://en.unesco.org/EQUALS/policy-paper), women’s digital and algorithmic literacy skills are not at the same level as men’s. Women are less likely to know how to operate or use computers, navigate the internet, use social media and understand how to safeguard information in digital media – abilities that underlie innumerable life and work tasks and are relevant to people of all ages. UNESCO estimates that men are around four times more likely than women to have advanced information and communication technology (ICT) skills such as the ability to program.

Women are also less likely to create cutting-edge technology. According to studies, across G20 countries, just 7 per cent of ICT patents are generated by women. A recent survey of undergraduate students in 29 countries found that early adopters of new technologies are overwhelmingly male. Calculations based on the attendees of the world’s top machine-learning conferences in 2017 indicate that only 12 percent of the leading machine-learning researchers are female.

::: {.nota}

The lack of diversity in technology may have a serious effect as big data and algorithms become influential in day-to-day life. AI is now used from the healthcare industry to the legal system, and it affects people’s life trajectories in many ways. As more and more digital tools are built by men, many worry, the the digital space is becoming increasingly gendered.

:::

Technology studies indicate that technology often reflects its developers. For example, despite the fact that most low-income women in developing countries are primarily employed in agriculture, men have been the primary adopters and developers of agricultural technologies, and agricultural innovations and tools have been designed specifically for men’s use. As a result, many tools were developed to pursue men’s work in farmlands, and are known to be too heavy for women to push or have handles that women can’t reach. Precisely the same often applies to contemporary smart technology – voice command systems do not recognize women’s speech, and the sizes of smartphones and computer keyboards are not suitable for women users.

Inclusion is, however, about more than ensuring that women are able to participate. It is an obligation to ensure cultural, age-based and geographic diversity and their intersects. When thinking about the impact of AI in society, there is, simply, a need to intentionally develop systems in different settings and with diverse users.

::: {.reflexao data-titulo="Questionário do original"}
O material original traz aqui um questionário interativo (id `729e0725`). As perguntas não constam do repositório — ficam no banco de dados da plataforma. Redija o exercício correspondente em `exercicios/`.
:::

## AI rights for children

Have you ever thought about how much AI impacts children? They are exposed to algorithms at home, at school, and at play. Algorithms shape the environments in which they live, the services they have access to, and how they spend their time. Children play with interactive smart toys, they watch videos recommended by algorithms, use voice commands to control their phones, and use image manipulation algorithms for fun in social media.

The presence of AI in children’s lives raises many questions. Is it acceptable to use recommendation algorithms with children or to provide an interactive toy if the child cannot understand that they are dealing with a computer? How should parents be advised on the possible impact of AI-based toys on the cognitive development of a child? What should children learn about AI in schools in order to have a sufficient understanding of the technology around them? At what point should a child be given the right to decide about the consents involved? How long should the data be stored?

As Unicef and other organisations emphasize, we must pay specific attention to children and the evolution of AI technology in a way that children-specific rights and needs are recognized. The potential impact of artificial intelligence on children deserves special attention, given children’s heightened vulnerabilities and the numerous roles that artificial intelligence will play throughout the lifespan of individuals born in the 21st century.

For more information:

https://www.unicef.org/innovation/GenerationAI

https://www.weforum.org/projects/generation-ai

::: {.nota data-titulo="The Convention on the Rights of the Child"}

The Convention on the Rights of the Child (CRC) is the most comprehensive legal framework that protects children – defined as human beings 18 years old and under – as rights bearers. The CRC aims to ensure children’s equality of treatment by nation states. More than a binding international document, the convention is an ethical and legal framework for assessing states’ progress or regress on issues of particular interest to children.

The content of the convention can be summarized under three themes: the child is entitled to special protection and care, adequate provision of resources by society, and participation in the decision-making concerning himself or herself with respect to his or her age and maturity.

The convention involves four general principles:

* All children are equal
* The interests of the child are primary in all decision-making
* The child is entitled to a good life
* The views of the child shall be taken into account

The rights of the child are the obligation of adults. The authorities must evaluate the impact on children of all their measures and decisions relating to children, take into account the interests of the children and listen to their opinions.

Parents and legal guardians have the primary responsibility for taking care of their children and their upbringing. They are entitled to obtain support, guidance and advice for that task. If the parents or guardians are not, despite support, able to take care of the well-being of their child, the state must safeguard good care for the child through foster care or adoption.

:::

However, the current international framework that protects children’s rights does not explicitly address many of the issues raised by the development and use of artificial intelligence. Instead, it identifies several rights that may be implicated by these technologies, and thus provides a starting place for any analysis of how children’s rights may be positively or negatively affected by new technologies, such as rights to privacy, to education, to play, and to non-discrimination.

::: {.reflexao data-titulo="Questionário do original"}
O material original traz aqui um questionário interativo (id `6c43ca71`). As perguntas não constam do repositório — ficam no banco de dados da plataforma. Redija o exercício correspondente em `exercicios/`.
:::

::: {.reflexao data-titulo="Questionário do original"}
O material original traz aqui um questionário interativo (id `b5499af6`). As perguntas não constam do repositório — ficam no banco de dados da plataforma. Redija o exercício correspondente em `exercicios/`.
:::

::: {.reflexao data-titulo="Questionário do original"}
O material original traz aqui um questionário interativo (id `e2c6a5d0`). As perguntas não constam do repositório — ficam no banco de dados da plataforma. Redija o exercício correspondente em `exercicios/`.
:::

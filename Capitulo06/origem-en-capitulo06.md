## What is fairness

::: {.definicao}

For this thought experiment, let’s assume that due to the COVID-19 pandemic, all matricular examinations in Finnish upper secondary schools were cancelled. Instead of an exam, an alternative method had to be designed and implemented to determine the qualification grades to be given to students for that year. Students are accepted to university on the basis of their grades, so the grades of matricular examinations are extremely important.

The government decided that teachers would give an estimate of how they thought their students would have performed on the exams, and that will determine their grades. Teachers were asked to make evaluations of their pupils.

To combat grade inflation, an algorithm that weighted the scores based on the historic performance of individual secondary schools was used. The idea was that the algorithm would compensate for the tendency of teachers to inflate the expected performance of their students, and thus the estimations would more accurately predict how test-takers would have actually performed. The  algorithm was designed with two pieces of information: the ranking of students within a school and their school’s historical performance.

As a result, on a national level grades corresponded with the grade distribution in previous years pretty well. However, the algorithm downgraded nearly 40 per cent of the grades predicted by teachers. Data showed that the results of those from lower socio-economic backgrounds were downgraded more often than the ones with higher socio-economic backgrounds. For low-income students who were hoping to go to university, the results were devastating.

:::

Many would take this thought experiment as an example of algorithmic unfairness. It does not only describe how algorithms themselves can result in unfair results, but also how algorithms can reinforce already existing economic and societal bias.

### Fairness and bias

Fairness and bias are probably the most discussed ethical issues related to the contemporary algorithms. Why are they so central?

* **Firstly**, fairness is a fundamental element of social stability. As the philosopher John Rawls remarks, the stability of a society – or any group – depends upon the extent to which the members of that society feel that they are being treated in a just manner. When some of society's members feel that they are treated in an unfair manner, it usually creates a foundation for social unrest, disturbances, and strife. People hold social unity only to the extent that their institutions are fair.

* **Secondly**, as Immanuel Kant remarked, human beings have the same dignity. In virtue of this dignity they are entitled to be treated as equals. If individuals are treated unfairly – especially on arbitrary grounds – their fundamental human dignity is violated. When this violation is implemented in practices, it leads to discrimination.

However, as the example of grade inflation algorithm illustrates, fairness is a complex issue. The algorithm was designed to correct grade inflation because it was thought to be unfair if students got an unfair advantage on their grades. As a result, paradoxically, the algorithm ended up reinforcing already existing societal bias.

In this chapter, we’ll focus on fairness, biases and discrimination. We’ll address questions such as: What, exactly, is fairness? Should fairness consist of ensuring everyone has an equal probability of obtaining some benefit? Or should fairness take the individual differences into account, and recognize the diversity? And finally, are fairness and discrimination synonymous, or do they mean separate things?

## The varieties of fairness

Philosophers have proposed various definitions for the concept of fairness. According to Aristotle, “equals should be treated equally and unequals unequally”.

This **principle of equality** states that individuals should be treated the same, unless they differ in ways that are relevant to the situation in which they are involved.

For example, if Alan Turing and Ada Lovelace both got the same grades from the exams, and there are no relevant differences between them or the exams they take, then they should be given the same grade. And if Turing would get a better grade than Lovelace simply because he has a higher socio-economic status, then it would be unfair. Why? Because socio-economic status should not be relevant when grades are given.

However, the principle of equality has been criticized for being “blind”. The principle does not take into account that not every one of us starts from the same position, or that there are individual differences that matter. In contrast to equality, “equity” does not promote fairness by treating categorically everybody the same, but by giving everybody equal access to the same opportunities. For example, there are situations where the differences in socio-economic background is a relevant criteria for treating people differently. For example, most people accepted it as fair when the government gives social benefits only to those citizens that really need them, and does not provide benefits to all.

**Equality** means that everybody is treated the same.

![Equality image](./equality.svg)

**Equity** means that everybody gets what they need to be successful.

![Equity image](./equity.svg)

On the other hand, there are also criteria that are not justifiable grounds for giving people different treatment. For example, we generally hold that it is unfair to give individuals special treatment on the basis of age, sex, race, or their religious preferences. What is discrimination, in other words?

::: {.nota data-titulo="Different kinds of justice"}

**Distributive justice** means the extent to which society’s institutions ensure that benefits and burdens are distributed among society’s members in ways that are fair and just.

**Retributive justice** means the extent to which punishments are fair and just. In general, punishments are held to be just to the extent that they take into account relevant criteria such as the seriousness of the crime and the intent of the criminal, and discount irrelevant criteria such as race.

**Compensatory justice** means the extent to which people are fairly compensated for their injuries by those who have injured them; just compensation is proportional to the loss inflicted on a person. This is precisely the kind of justice that is at stake in debates over damage to workers’ health in coal mines. Some argue that mine owners should compensate the workers whose health has been ruined. Others argue that workers voluntarily took on this risk when they chose employment in the mines.

:::

## Discrimination and biases

In this section we will study discrimination and how discriminatory practices can manifest through artificial intelligence. Bias has recently become the prototypical issue for AI ethics, since the hope that the exact formality of algorithms makes them immune to partiality has turned out to be sorely false. First, we will look at three examples of algorithmic systems, which will help us analyze discrimination and bias in AI.

#### Example 1: Word embeddings: ([Bolukbasi et al](https://arxiv.org/abs/1607.06520)).

Word embeddings are a form of data structure used in natural language processing applications (AI that can understand a language, like English). They are produced by trawling through texts and noting which words often occur together. The produced associations work as a kind of dictionary for AI systems, capturing semantic relationships like “man” is to “king” as “woman” is to “queen”. Bolukbasi et al. found that, rather unsurprisingly, these kinds of word associations have a tendency to encode conceptual relationships which are culturally pervasive but considered discriminatory. For example, “mother” is to “nurse” as “father” is to “doctor”.

![bias](img/bias.svg)
 </img>

#### Example 2: Amazon recruitment algorithm ([Dastin 2018](https://www.reuters.com/article/us-amazon-com-jobs-automation-insight/amazon-scraps-secret-ai-recruiting-tool-that-showed-bias-against-women-idUSKCN1MK08G))

In 2014, Amazon started developing an internal AI system to streamline their recruitment process. Using the CVs of past applicants as training data, the system would analyze incoming CVs and rate the candidates for further evaluation. Very quickly though, the system was found to rate candidates for technical jobs in a gender-biased way.

The system was found to penalize any CVs which indicated the applicant to be a woman. This included mentions of attending things like a women’s chess club, or an all-women college.  Amazon reportedly attempted to debias the system but ended up scrapping the whole project instead. The system was never used in actual recruiting processes.

#### Example 3: Credit scoring ([Rutkenstein & Velkova 2019](https://algorithmwatch.org/en/automating-society-2019/finland/))

In 2018, the non-discrimination and equality tribunal of Finland judged on a case where a consumer credit application was automatically denied using statistical methods. The credit institution Svea Ekonomi atuomatically evaluated an individual's creditworthiness in conjunction to his online purchase of building materials, for which he was seeking credit. The credit decision was appealed, and the the tribunal found that "the applicant’s age, male gender, Finnish as the mother tongue and the place of residence in a rural area were all factors that contributed to a case of multiple discriminations, resulting in a decision not to grant a loan." The tribunal remarked, that had the applicant been a woman, or Swedish speaking, he would have been granted the credit.

#### What is discrimination?

First, it is important to note that the word discrimination can be used in a  morally agnostic sense (“can you discriminate between these two colors?”). Throughout this section, we mean the morally loaded sense of the word. But when is discrimination morally suspect? It may seem a silly question to ask. After all, most people would agree that we have a rather clear intuitive sense of what discrimination is. Hearing the word embedding example above, we have no difficulty in pointing to the offending word association and declaring “This is discriminatory!” Putting into words what it is which makes it discriminatory though, turns out to be a slippery task. But let’s start with writing out our intuitions, and see where we go from there:

::: {.definicao data-titulo="Definition 1: Discrimination"}

Discrimination is a difference of treatment of individuals based on their membership in a group.

:::

So how does this definition fare in capturing our sense of discrimination? The words doing the work here are “difference” and “group”. That is, discrimination is something which is comparative, and the units of comparison are different groups (or, rather, groupings), or individuals belonging to them. This is a good start, but let’s analyze where this definition draws the line. What is included, and what is left out?

Consider, for example, driver’s licenses. In Finland, driver’s licenses are issued by the police, upon completion of certain amount of practical and theoretical training, as well as an exam. Thus, driver’s licenses are issued based on individual merit. Nonetheless, we generally find it sensible that people with severely impaired vision are precluded from the process altogether, and we do not consider this discriminatory in the moral sense. After all, driving would be practically impossible either way.  Thus we need to include some sense of the harmfulness of discrimination in our definition.

Consider, then, a café which only serves people wearing green shirts. This is most definitely differential treatment based on group membership, and conducive of a kind of harm, but we would not consider this discrimination in the moralistic sense either. We might find it a strange policy, but not a morally problematic one.  Thus, it is not just group membership we are interested in, but which groups.

::: {.definicao data-titulo="Definition 2: Discrimination"}

Discrimination is differential treatment based on perceived membership in a socially salient group, which causes social harm. ([Lippert-Rasmussen 2014](https://oxford.universitypressscholarship.com/view/10.1093/acprof:oso/9780199796113.001.0001/acprof-9780199796113))

:::

“Socially saliency” is what identifies which features are moralistically relevant in cases of discrimination. But what does it mean? According to Lippert-Rasmussen, a feature is socially salient if it is important to the structure of social interactions across multiple contexts. That is, what are considered socially salient classifications is a historically contingent matter: in an alternate timeline, where wearing a green shirt was invariably a matter of social importance that factored into the kind of dignity, opportunities or status afforded to a person (if it was religious attire, for example), the café example above might well count as a case of discrimination.

Recognizing moralistic discrimination then is not simply a matter of recognizing discrepancies of treatment across arbitrary groupings. Rather, it requires the contextualization of the disparate treatment in the history of oppressive or valuative practices in society, and the groupings made salient thus. For example, the EU charter of fundamental rights lists the following as features, which are morally pertinent in cases of discrimination:  “sex, race, color, ethnic or social origin, genetic features, language, religion or belief, political or any other opinion, membership of a national minority, property, birth, disability, age and sexual orientation.”

### Harms – what are they?

Reflecting on the two examples above, the condition of social saliency is clearly fulfilled in both. Gender is a category which has historically always structured social interaction. What about harm? One case is clearer than the other: losing out on a job opportunity due to reasons unrelated to one’s suitability for the job is clearly a harm. In the case of the word embeddings, any harm which may incur is more difficult to pinpoint. At least, we cannot directly point out an opportunity lost, a service refused or a good denied. In cases like this, a harm is nonetheless instigated. To capture this, we need to understand the difference between **allocative** and **representational** harms, as they are presented in [Crawford 2017](https://www.youtube.com/watch?v=fMym_BKWQzk).

#### Allocative harms

Allocative harms are situations where an individual is made worse off in terms of the resources available to them. Here resources should be understood broadly not only as food, cars, cell phones and other material goods, but also the services and opportunities provided. A lower salary for the same work is most definitely an allocative harm. But so is denying the opportunity for a job interview on the basis of one’s gender, or denying credit based on it.

Even such abstractions such as risk may be the objects of allocative harms. [Wilson, Hoffman, and Morgenstern (2019)](http://arxiv.org/abs/1902.11097) found that object detection algorithms are worse at recognizing dark toned figures than light toned ones. The researchers Joy Buolamwini and Timnit Gebru have also shown that facial recognition algorithms are noticeably worse at recognising faces of people of color ([Buolamwini and Gebru 2018](http://proceedings.mlr.press/v81/buolamwini18a/buolamwini18a.pdf)). This means that driverless cars may be more likely to hit a black person than a white one. Now granted that causing bodily damage is clearly a harm, one can argue that a harm has been incurred even before such accidents take place. Namely, the disparate distribution of risk is itself an allocative harm to the worse off party.

#### Representational harms

Representational harms are ones which do not concern the distribution of goods. Rather, they concern the representation of groups and individuals. This class includes harms such as denigration, stereotyping, misrecognition, and exnomination. Exnomination is a term originating from media studies and means a practice where a certain category or way of being is framed as the norm by not giving it a name, or not specifying it as a category in itself (for example, “athlete” vs “female athlete”).

Representational harms affect the narratives we construct of the relevant social groups. By amplifying stereotypical views, degrading the social status of individuals and framing certain ways of being the status quo, representational harms manufacture the unwarranted justifications for oppressive practices.

With the concept of representational harms, we are able to identify the gender-skewed word associations as discriminatory, even though the word associations themselves are not an example of resource distribution in the sense of allocative harms.

### How does bias come about?

 “All data is historical data: the product of a time, place, political, economic, technical, and social climate. If you are not considering why your data exists, and other data sets don’t, you are doing data science wrong”.

- [Melissa Terras (2019)](https://www.youtube.com/watch?v=4yYytLUViI4)

::: {.definicao data-titulo="Three different meanings of “bias”"}

In **statistics**: discrepancy of a sample statistic vs the true statistic of the population.

In **cognitive science**: A mode of reasoning which is likely to produce an incorrect or skewed result.

In **social justice**: a morally suspect discrepancy in the treatment of people.

:::

So far, we have managed to find a reasonable definition of discrimination, and have at least two anecdotal examples of AI systems taking part in it. In both cases, the discriminatory practice arises from biases in the AI system itself. So if we want to get a handle on this issue, we have some questions to answer. How do AI systems become biased? How can we measure if a system is biased? How can we fix it?

In this section we will look at the way that discriminatory practices feed into each other. That is, biased AI is not only a technical issue, but a result of a history of social practices. Can we detect when our systems amplify these discriminatory tendencies, and better yet, how can we stop the cycle? We will look at three ways bias enters into a system:

#### 1) Non-representative sample

The most clear-cut way bias enters into a system is through a non-representative data set. That is, the data we feed into the learning system is not a faithful picture of the world at large. It is not surprising that by manipulating the way the learner sees the world, by amplifying some instances of phenomena and suppressing others, the system learns a skewed model.

For example, the ability to recognize people is disparately distributed across ethnic groups in many facial recognition systems. The result being, that Google’s picture classification system, for example, has labelled black people as gorillas ([Kasperkevic 2015](https://www.theguardian.com/technology/2015/jul/01/google-sorry-racist-auto-tag-photo-app)).

One reason for this is, according to [Buolamwini and Gebru 2018](http://proceedings.mlr.press/v81/buolamwini18a/buolamwini18a.pdf), that many popular face datasets have a very poor distribution of examples across different genders and ethnicities. That is, the view of the faces of the world fed into the learning systems is undeniably white and male, and very non-representative of the true distribution of faces in the world. Sometimes this is technically referred to as sample size disparity, and it leads to biased systems, because the learning algorithm disregards poorly represented subpopulations to achieve higher predictivity on the majority of the dataset.

#### 2) Label bias

Let the data speak for itself, as the saying goes. It’s a nice thought, but the unfortunate truth is that data does not have a voice of its own. Data only speaks through our interpretations of it – and often these interpretations are difficult to make. This is especially true in situations where there is a discrepancy between what is being measured and what is being investigated.

For example, predicting crime is a task which, if done well, would interest courts, police departments and citizens alike. Unfortunately, crime is a difficult thing to measure, and thus, good data sets are difficult to manufacture. What we can measure is things we have informational access to, like arrests and convictions. The hope is that these proxies correlate well with the amount of crime in a population. Furthermore, we should wish that the proxies correlate similarly well across socially salient groups within the population.

The unfortunate truth is that arrests are hardly a neutral proxy for crime. It may give a good sense of overall crime in a population, but it does not generalize well across groupings. In the united states, black people may be much more likely to be arrested on drug charges than white people ([Ferrer & Connolly (2018)](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6050822/)), for example. This doesn’t mean that black people are more likely to commit drug crime, only that black people are more likely to be caught, arrested and logged doing it. Thus, any inferences about crime from such data will necessarily repeat and reinforce injustices which brought about the data itself.

#### 3) Cultural unawareness

While “AI” and “machine learning” both portray an image of machinic autonomy, in reality large amounts of work  – human work, that is – go into making AI systems real. Thus the behavior of AI systems cannot be seen by only looking at the algorithm and the data going into it. Choices are made in the deployment, interpretation, design and maintenance work involved in AI, and sometimes these choices can create biases in the system.

One of the clearest examples of this is in the ways data is made “clean”, involving decisions about what is real signal as opposed to bothersome noise. This is a task that is sometimes seen as janitorial work, and thus not a part of the core business of AI and it happens unnoticed in many stages of the process. For example, when collecting data in webforms, it is called input sanitization.

::: {.tecnica}

A good example of this is when collecting names. To prevent false data from entering the system, certain constraints are made as to how names are supposed to look. For example, sometimes it is assumed that names consist of given names and a surname. Sometimes it is assumed that names only contain letters from A to Z. Sometimes it is assumed that names always have more than two letters.

These might be reasonable assumptions in the limited cultural context of the designers and programmers, but in reality names are extremely diverse. No universal form for names can really be given, and if one wants to be truly inclusive, all name fields in webforms should be arbitrary length text boxes that allow any kinds of characters. Without diverse cultural understanding, the system can be unintentionally designed to leave out large groups of people who do not abide by dominant cultural standards.

:::

Bias can thus enter into a system in many different ways, and the above are just a few examples of the mechanisms at play. The important point here is that when analysing AI systems for unfairness, it’s not enough to just look at the algorithms. Rather, unfairness can arise because of historical, cultural, design, data management or deployment reasons, and thus the whole process of AI development must be under scrutiny.

## Removing bias

So, how do we make AI systems more fair and less biased? There is no panacea for bias – partly because of the many different ways that bias can manifest, and partly because there is no single definition of an algorithmically fair outcome. Nonetheless, we can look at some of the situations above and look at ways the problems with fairness could potentially have been dealt with.

Starting with the example of the sexist recruiting algorithm, we can pinpoint the source of bias to historical recruitment practices that produced the training data, and the assumption that past recruitment practices provide normative basis for future practices (ie. “we should hire this person because we have hired people like them before”). We can see that the root issues are inexorably linked to company culture and even wider working culture in the technology sector, as well as a morally suspect reasoning (recall Hume’s guillotine in chapter 2). These are problems which require large cultural shifts and structural reformations, and are unlikely to be fixed by technological solutions.

#### Anticlassification
Nonetheless, one could try to salvage what's possible from the dataset, and see if it could be made at least less biased. One common technical fix on the data set is called anticlassification, or the removal of explicit protected variables from the data. This means erasing information like gender or ethnicity, and their proxies from the data. Here proxies mean features that are strongly correlated with the protected characteristics. Like in the case of the recruiting algorithm mentioned earlier, if a person’s CV contains references to maternal leave or a women’s college, the algorithm could still make gendered predictions even if an explicit gender variable is left out.

This may go some way to reducing bias in the system, but whether it is effective in any specific scenario needs to be verified by testing and auditing. Corbett-Davies and Goel (2018) have shown that anticlassification may even be detrimental to fairness in certain situations, where features have different predictive power across social groups. One illustration of this is heart attack symptoms: research has shown that heart attacks look very different in female patients than in male patients. The symptoms most people know to look for, for example right sided chest pain, is far more common in male patients than female patients. Thus, an app where one can check “am I having a heart attack” would likely give very wrong results if it did not take into consideration the sex of the patient.

#### Resampling
In cases like the facial recognition algorithm researched by Buolamwini and Gebru, where bias is produced through sample size disparity, resampling is one possible way to approach the problem. This might mean only using a smaller portion of the dataset, which has a better distribution of examples across all relevant social grouping. Another way to resample is to produce synthetic examples of the underrepresented groups (Chawla et al. 2002). Again, whether these work is a matter of case by case verification. It might be that the dataset is so unbalanced that there is no way to fix it save from creating a new one from scratch. Furthermore, in a case which is so high-risk and sensitive, such as facial recognition, it is not a given that the system will be ethical, fair and nondiscriminatory even if the classification is unbiased and the data set equally representative. This is something we will approach in the next section, but in terms of making the AI fair, sometimes the only way to do that is to not develop the AI in the first place.

#### Discrimination beyond bias

The important thing to remember here, is that discrimination is not the same as systematic bias. Bias in AI systems is a very clear cut cause for discriminatory practices, and because of its quantifiable nature, it’s easy to fit into the conceptual world of technical AI research. This may be why the conceptual leap from discrimination to bias is so often made.

Nonetheless, AI systems can partake in discriminatory practices which do not stem from bias in the AI system. Rather, we have to expand our object of investigation from the minutiae of the AI model, to the whole system of institutions it takes part in.

::: {.nota}

In early 2018, researchers from Stanford Graduate School of Business published a white-paper detailing a deep learning system which could distinguish between gay and heterosexual men with an accuracy of 81% based on a single photo of their face. The findings have been controversial, to say the least, and for many different reasons. Critics have raised worries about the resurrection of the pseudoscience of physiognomy, which has a deep rooted connection to historical racist injustices. There has also been suspicions that the system, rather than picking up on some subtle genetic signifiers as was claimed, is actually tracking how people tend to groom and take photos of themselves.

Furthermore, this AI system very clearly works in an ethically nebulous area in terms of privacy, self-determination, and, of course, discrimination. Leaving out the other concerns for the moment, how does discrimination function here? Clearly classification bias is not the discriminatory element here: we are not ethically concerned with whether the estimator is more accurate in predicting homosexuality in some groups than others. Instead, the ethically relevant feature of the system is that, regardless of its accuracy, it directly enables differential treatment based on perceived social grouping.

:::

It’s not necessary to draw out examples of malicious uses of such systems described above, as their possibility should be obvious to all. Directly malicious uses aside, we can imagine integrating such a technology into, say, the online personalized advertising machinery composed of social media, data processors, trend influencers and global merchandisers. Even if the classifying AI is by all technical standards fair and unbiased, it predicates the online advertising of goods on the discriminatory principle, that assumed sexual orientation is a valid reason to treat people differently.

This leads us to an important point for anyone considering the ethics of AI systems: beware the reductionism trap! That is, we should avoid reducing the concept of ethics to simplified, corner-cutting, quantified values, like unbiasedness. Because AI systems take part in processes which are much more complex than what the system itself does, ethics cannot be measured by just looking at the input and the output values of the algorithm.

Put succinctly, fair does not mean ethical.

::: {.reflexao data-titulo="Questionário do original"}
O material original traz aqui um questionário interativo (id `3d90fdb5`). As perguntas não constam do repositório — ficam no banco de dados da plataforma. Redija o exercício correspondente em `exercicios/`.
:::

::: {.reflexao data-titulo="Questionário do original"}
O material original traz aqui um questionário interativo (id `85c517ae`). As perguntas não constam do repositório — ficam no banco de dados da plataforma. Redija o exercício correspondente em `exercicios/`.
:::

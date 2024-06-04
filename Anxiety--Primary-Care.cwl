cwlVersion: v1.0
steps:
  read-potential-cases-i2b2:
    run: read-potential-cases-i2b2.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  anxiety--primary-care-tranxene---primary:
    run: anxiety--primary-care-tranxene---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-i2b2/output
  anxiety--primary-care-xanxiety---primary:
    run: anxiety--primary-care-xanxiety---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: anxiety--primary-care-tranxene---primary/output
  phobiapublic-anxiety--primary-care---primary:
    run: phobiapublic-anxiety--primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: anxiety--primary-care-xanxiety---primary/output
  anxiety--primary-care-therapy---primary:
    run: anxiety--primary-care-therapy---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: phobiapublic-anxiety--primary-care---primary/output
  anxiety--primary-care-fearfulness---primary:
    run: anxiety--primary-care-fearfulness---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: anxiety--primary-care-therapy---primary/output
  anxiety--primary-care-neurosis---primary:
    run: anxiety--primary-care-neurosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: anxiety--primary-care-fearfulness---primary/output
  anxiety--primary-care-edisylate---primary:
    run: anxiety--primary-care-edisylate---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: anxiety--primary-care-neurosis---primary/output
  xpanic-anxiety--primary-care---primary:
    run: xpanic-anxiety--primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: anxiety--primary-care-edisylate---primary/output
  anxiety--primary-care-xmixed---primary:
    run: anxiety--primary-care-xmixed---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: xpanic-anxiety--primary-care---primary/output
  anxiety--primary-care-phobia---primary:
    run: anxiety--primary-care-phobia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: anxiety--primary-care-xmixed---primary/output
  anxiety--primary-care-speaking---primary:
    run: anxiety--primary-care-speaking---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: anxiety--primary-care-phobia---primary/output
  antiphobic-anxiety--primary-care---primary:
    run: antiphobic-anxiety--primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: anxiety--primary-care-speaking---primary/output
  ritual-anxiety--primary-care---primary:
    run: ritual-anxiety--primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: antiphobic-anxiety--primary-care---primary/output
  anxiety--primary-care-attack---primary:
    run: anxiety--primary-care-attack---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: ritual-anxiety--primary-care---primary/output
  anxiety--primary-care-washing---primary:
    run: anxiety--primary-care-washing---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: anxiety--primary-care-attack---primary/output
  anxiety--primary-care-agoraphobia---primary:
    run: anxiety--primary-care-agoraphobia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: anxiety--primary-care-washing---primary/output
  obsessivecompulsive-anxiety--primary-care---primary:
    run: obsessivecompulsive-anxiety--primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: anxiety--primary-care-agoraphobia---primary/output
  anxiety--primary-care-xgeneralized---primary:
    run: anxiety--primary-care-xgeneralized---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: obsessivecompulsive-anxiety--primary-care---primary/output
  anxiety--primary-care-guided---primary:
    run: anxiety--primary-care-guided---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: anxiety--primary-care-xgeneralized---primary/output
  anxiety--primary-care-xpredom---primary:
    run: anxiety--primary-care-xpredom---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: anxiety--primary-care-guided---primary/output
  xobsessive-anxiety--primary-care---primary:
    run: xobsessive-anxiety--primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: anxiety--primary-care-xpredom---primary/output
  anxiety--primary-care-training---primary:
    run: anxiety--primary-care-training---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: xobsessive-anxiety--primary-care---primary/output
  anxiety-primary-care---primary:
    run: anxiety-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: anxiety--primary-care-training---primary/output
  anxiety--primary-care-adolescence---primary:
    run: anxiety--primary-care-adolescence---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: anxiety-primary-care---primary/output
  nervous-anxiety--primary-care---primary:
    run: nervous-anxiety--primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: anxiety--primary-care-adolescence---primary/output
  anxiety--primary-care-[d]nervousness---primary:
    run: anxiety--primary-care-[d]nervousness---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: nervous-anxiety--primary-care---primary/output
  anxiety--primary-care-anxiousness---primary:
    run: anxiety--primary-care-anxiousness---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: anxiety--primary-care-[d]nervousness---primary/output
  anxious-anxiety--primary-care---primary:
    run: anxious-anxiety--primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: anxiety--primary-care-anxiousness---primary/output
  anxiety--primary-care-rimapam---primary:
    run: anxiety--primary-care-rimapam---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: anxious-anxiety--primary-care---primary/output
  anxiety--primary-care-buspar---primary:
    run: anxiety--primary-care-buspar---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: anxiety--primary-care-rimapam---primary/output
  anxiety--primary-care-400microgram---primary:
    run: anxiety--primary-care-400microgram---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: anxiety--primary-care-buspar---primary/output
  anxiety--primary-care-ucerax---primary:
    run: anxiety--primary-care-ucerax---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: anxiety--primary-care-400microgram---primary/output
  anxiety--primary-care-bromazepam---primary:
    run: anxiety--primary-care-bromazepam---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: anxiety--primary-care-ucerax---primary/output
  anxiety--primary-care-375mg---primary:
    run: anxiety--primary-care-375mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: anxiety--primary-care-bromazepam---primary/output
  anxiety--primary-care-dipotassium---primary:
    run: anxiety--primary-care-dipotassium---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: anxiety--primary-care-375mg---primary/output
  anxiety--primary-care-anxiol---primary:
    run: anxiety--primary-care-anxiol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: anxiety--primary-care-dipotassium---primary/output
  anxiety--primary-care-clobazam---primary:
    run: anxiety--primary-care-clobazam---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: anxiety--primary-care-anxiol---primary/output
  anxiety--primary-care-almazine---primary:
    run: anxiety--primary-care-almazine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: anxiety--primary-care-clobazam---primary/output
  anxiety--primary-care-suppository---primary:
    run: anxiety--primary-care-suppository---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule40
      potentialCases:
        id: potentialCases
        source: anxiety--primary-care-almazine---primary/output
  anxiety--primary-care-alupram---primary:
    run: anxiety--primary-care-alupram---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule41
      potentialCases:
        id: potentialCases
        source: anxiety--primary-care-suppository---primary/output
  anxiety--primary-care-192mg---primary:
    run: anxiety--primary-care-192mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule42
      potentialCases:
        id: potentialCases
        source: anxiety--primary-care-alupram---primary/output
  anxiety--primary-care-ativan---primary:
    run: anxiety--primary-care-ativan---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule43
      potentialCases:
        id: potentialCases
        source: anxiety--primary-care-192mg---primary/output
  anxiety--primary-care-ketazolam---primary:
    run: anxiety--primary-care-ketazolam---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule44
      potentialCases:
        id: potentialCases
        source: anxiety--primary-care-ativan---primary/output
  anxiety--primary-care-chlordiazepoxide---primary:
    run: anxiety--primary-care-chlordiazepoxide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule45
      potentialCases:
        id: potentialCases
        source: anxiety--primary-care-ketazolam---primary/output
  anxiety--primary-care-medazepam---primary:
    run: anxiety--primary-care-medazepam---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule46
      potentialCases:
        id: potentialCases
        source: anxiety--primary-care-chlordiazepoxide---primary/output
  anxiety--primary-care-lexotan---primary:
    run: anxiety--primary-care-lexotan---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule47
      potentialCases:
        id: potentialCases
        source: anxiety--primary-care-medazepam---primary/output
  anxiety--primary-care-oxazepam---primary:
    run: anxiety--primary-care-oxazepam---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule48
      potentialCases:
        id: potentialCases
        source: anxiety--primary-care-lexotan---primary/output
  anxiety--primary-care-225mg---primary:
    run: anxiety--primary-care-225mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule49
      potentialCases:
        id: potentialCases
        source: anxiety--primary-care-oxazepam---primary/output
  oxanid-anxiety--primary-care---primary:
    run: oxanid-anxiety--primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule50
      potentialCases:
        id: potentialCases
        source: anxiety--primary-care-225mg---primary/output
  anxiety--primary-care-tensium---primary:
    run: anxiety--primary-care-tensium---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule51
      potentialCases:
        id: potentialCases
        source: oxanid-anxiety--primary-care---primary/output
  anxiety--primary-care-meprobamate---primary:
    run: anxiety--primary-care-meprobamate---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule52
      potentialCases:
        id: potentialCases
        source: anxiety--primary-care-tensium---primary/output
  anxiety--primary-care-equanil---primary:
    run: anxiety--primary-care-equanil---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule53
      potentialCases:
        id: potentialCases
        source: anxiety--primary-care-meprobamate---primary/output
  anxiety--primary-care-200mg---primary:
    run: anxiety--primary-care-200mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule54
      potentialCases:
        id: potentialCases
        source: anxiety--primary-care-equanil---primary/output
  anxiety--primary-care-valium---primary:
    run: anxiety--primary-care-valium---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule55
      potentialCases:
        id: potentialCases
        source: anxiety--primary-care-200mg---primary/output
  anxiety--primary-care-librium---primary:
    run: anxiety--primary-care-librium---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule56
      potentialCases:
        id: potentialCases
        source: anxiety--primary-care-valium---primary/output
  anxiety--primary-care-frisium---primary:
    run: anxiety--primary-care-frisium---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule57
      potentialCases:
        id: potentialCases
        source: anxiety--primary-care-librium---primary/output
  anxiety--primary-care-dichloralphenazone---primary:
    run: anxiety--primary-care-dichloralphenazone---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule58
      potentialCases:
        id: potentialCases
        source: anxiety--primary-care-frisium---primary/output
  anxiety--primary-care-tablet---primary:
    run: anxiety--primary-care-tablet---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule59
      potentialCases:
        id: potentialCases
        source: anxiety--primary-care-dichloralphenazone---primary/output
  anxiety--primary-care-perizam---primary:
    run: anxiety--primary-care-perizam---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule60
      potentialCases:
        id: potentialCases
        source: anxiety--primary-care-tablet---primary/output
  anxiety--primary-care-hydroxyzine---primary:
    run: anxiety--primary-care-hydroxyzine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule61
      potentialCases:
        id: potentialCases
        source: anxiety--primary-care-perizam---primary/output
  anxiety--primary-care-400mg---primary:
    run: anxiety--primary-care-400mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule62
      potentialCases:
        id: potentialCases
        source: anxiety--primary-care-hydroxyzine---primary/output
  anxiety--primary-care-diazepam---primary:
    run: anxiety--primary-care-diazepam---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule63
      potentialCases:
        id: potentialCases
        source: anxiety--primary-care-400mg---primary/output
  anxiety--primary-care-prazepam---primary:
    run: anxiety--primary-care-prazepam---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule64
      potentialCases:
        id: potentialCases
        source: anxiety--primary-care-diazepam---primary/output
  anxiety--primary-care-tropium---primary:
    run: anxiety--primary-care-tropium---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule65
      potentialCases:
        id: potentialCases
        source: anxiety--primary-care-prazepam---primary/output
  stesolid-anxiety--primary-care---primary:
    run: stesolid-anxiety--primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule66
      potentialCases:
        id: potentialCases
        source: anxiety--primary-care-tropium---primary/output
  anxiety--primary-care-anxon---primary:
    run: anxiety--primary-care-anxon---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule67
      potentialCases:
        id: potentialCases
        source: stesolid-anxiety--primary-care---primary/output
  anxiety--primary-care-atensine---primary:
    run: anxiety--primary-care-atensine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule68
      potentialCases:
        id: potentialCases
        source: anxiety--primary-care-anxon---primary/output
  anxiety--primary-care-143mg---primary:
    run: anxiety--primary-care-143mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule69
      potentialCases:
        id: potentialCases
        source: anxiety--primary-care-atensine---primary/output
  anxiety--primary-care-hydrochloride---primary:
    run: anxiety--primary-care-hydrochloride---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule70
      potentialCases:
        id: potentialCases
        source: anxiety--primary-care-143mg---primary/output
  anxiety--primary-care-chlormezanone---primary:
    run: anxiety--primary-care-chlormezanone---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule71
      potentialCases:
        id: potentialCases
        source: anxiety--primary-care-hydrochloride---primary/output
  anxiety--primary-care-alprazolam---primary:
    run: anxiety--primary-care-alprazolam---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule72
      potentialCases:
        id: potentialCases
        source: anxiety--primary-care-chlormezanone---primary/output
  rectal-anxiety--primary-care---primary:
    run: rectal-anxiety--primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule73
      potentialCases:
        id: potentialCases
        source: anxiety--primary-care-alprazolam---primary/output
  anxiety--primary-care-buspirone---primary:
    run: anxiety--primary-care-buspirone---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule74
      potentialCases:
        id: potentialCases
        source: rectal-anxiety--primary-care---primary/output
  anxiety--primary-care-atarax---primary:
    run: anxiety--primary-care-atarax---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule75
      potentialCases:
        id: potentialCases
        source: anxiety--primary-care-buspirone---primary/output
  anxiety--primary-care-nobrium---primary:
    run: anxiety--primary-care-nobrium---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule76
      potentialCases:
        id: potentialCases
        source: anxiety--primary-care-atarax---primary/output
  anxiety--primary-care-tapclob---primary:
    run: anxiety--primary-care-tapclob---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule77
      potentialCases:
        id: potentialCases
        source: anxiety--primary-care-nobrium---primary/output
  anxiety--primary-care-flumazenil---primary:
    run: anxiety--primary-care-flumazenil---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule78
      potentialCases:
        id: potentialCases
        source: anxiety--primary-care-tapclob---primary/output
  anxiety--primary-care-suspension---primary:
    run: anxiety--primary-care-suspension---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule79
      potentialCases:
        id: potentialCases
        source: anxiety--primary-care-flumazenil---primary/output
  anxiety--primary-care-650mg---primary:
    run: anxiety--primary-care-650mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule80
      potentialCases:
        id: potentialCases
        source: anxiety--primary-care-suspension---primary/output
  anxiety--primary-care-normison---primary:
    run: anxiety--primary-care-normison---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule81
      potentialCases:
        id: potentialCases
        source: anxiety--primary-care-650mg---primary/output
  anxiety--primary-care-temazepam---primary:
    run: anxiety--primary-care-temazepam---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule82
      potentialCases:
        id: potentialCases
        source: anxiety--primary-care-normison---primary/output
  anxiety--primary-care-triazolam---primary:
    run: anxiety--primary-care-triazolam---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule83
      potentialCases:
        id: potentialCases
        source: anxiety--primary-care-temazepam---primary/output
  anxiety--primary-care-sonata---primary:
    run: anxiety--primary-care-sonata---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule84
      potentialCases:
        id: potentialCases
        source: anxiety--primary-care-triazolam---primary/output
  anxiety--primary-care-flurazepam---primary:
    run: anxiety--primary-care-flurazepam---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule85
      potentialCases:
        id: potentialCases
        source: anxiety--primary-care-sonata---primary/output
  anxiety--primary-care-melatonin---primary:
    run: anxiety--primary-care-melatonin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule86
      potentialCases:
        id: potentialCases
        source: anxiety--primary-care-flurazepam---primary/output
  anxiety--primary-care-125microgram---primary:
    run: anxiety--primary-care-125microgram---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule87
      potentialCases:
        id: potentialCases
        source: anxiety--primary-care-melatonin---primary/output
  hypnotic-anxiety--primary-care---primary:
    run: hypnotic-anxiety--primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule88
      potentialCases:
        id: potentialCases
        source: anxiety--primary-care-125microgram---primary/output
  anxiety--primary-care-welldorm---primary:
    run: anxiety--primary-care-welldorm---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule89
      potentialCases:
        id: potentialCases
        source: hypnotic-anxiety--primary-care---primary/output
  anxiety--primary-care-lormetazepam---primary:
    run: anxiety--primary-care-lormetazepam---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule90
      potentialCases:
        id: potentialCases
        source: anxiety--primary-care-welldorm---primary/output
  anxiety--primary-care-flunitrazepam---primary:
    run: anxiety--primary-care-flunitrazepam---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule91
      potentialCases:
        id: potentialCases
        source: anxiety--primary-care-lormetazepam---primary/output
  anxiety--primary-care-gelthix---primary:
    run: anxiety--primary-care-gelthix---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule92
      potentialCases:
        id: potentialCases
        source: anxiety--primary-care-flunitrazepam---primary/output
  anxiety--primary-care-concentrate---primary:
    run: anxiety--primary-care-concentrate---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule93
      potentialCases:
        id: potentialCases
        source: anxiety--primary-care-gelthix---primary/output
  anxiety--primary-care-zaleplon---primary:
    run: anxiety--primary-care-zaleplon---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule94
      potentialCases:
        id: potentialCases
        source: anxiety--primary-care-concentrate---primary/output
  anxiety--primary-care-stilnoct---primary:
    run: anxiety--primary-care-stilnoct---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule95
      potentialCases:
        id: potentialCases
        source: anxiety--primary-care-zaleplon---primary/output
  anxiety--primary-care-dalmane---primary:
    run: anxiety--primary-care-dalmane---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule96
      potentialCases:
        id: potentialCases
        source: anxiety--primary-care-stilnoct---primary/output
  anxiety--primary-care-500mg---primary:
    run: anxiety--primary-care-500mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule97
      potentialCases:
        id: potentialCases
        source: anxiety--primary-care-dalmane---primary/output
  anxiety--primary-care-halcion---primary:
    run: anxiety--primary-care-halcion---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule98
      potentialCases:
        id: potentialCases
        source: anxiety--primary-care-500mg---primary/output
  anxiety--primary-care-paxane---primary:
    run: anxiety--primary-care-paxane---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule99
      potentialCases:
        id: potentialCases
        source: anxiety--primary-care-halcion---primary/output
  anxiety--primary-care-elixir---primary:
    run: anxiety--primary-care-elixir---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule100
      potentialCases:
        id: potentialCases
        source: anxiety--primary-care-paxane---primary/output
  anxiety--primary-care-zimovane---primary:
    run: anxiety--primary-care-zimovane---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule101
      potentialCases:
        id: potentialCases
        source: anxiety--primary-care-elixir---primary/output
  anxiety--primary-care-zileze---primary:
    run: anxiety--primary-care-zileze---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule102
      potentialCases:
        id: potentialCases
        source: anxiety--primary-care-zimovane---primary/output
  anxiety--primary-care-heminevrin---primary:
    run: anxiety--primary-care-heminevrin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule103
      potentialCases:
        id: potentialCases
        source: anxiety--primary-care-zileze---primary/output
  anxiety--primary-care-zopiclone---primary:
    run: anxiety--primary-care-zopiclone---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule104
      potentialCases:
        id: potentialCases
        source: anxiety--primary-care-heminevrin---primary/output
  anxiety--primary-care-triclofo---primary:
    run: anxiety--primary-care-triclofo---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule105
      potentialCases:
        id: potentialCases
        source: anxiety--primary-care-zopiclone---primary/output
  anxiety--primary-care-filled---primary:
    run: anxiety--primary-care-filled---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule106
      potentialCases:
        id: potentialCases
        source: anxiety--primary-care-triclofo---primary/output
  anxiety--primary-care-remno---primary:
    run: anxiety--primary-care-remno---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule107
      potentialCases:
        id: potentialCases
        source: anxiety--primary-care-filled---primary/output
  anxiety--primary-care-mixture---primary:
    run: anxiety--primary-care-mixture---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule108
      potentialCases:
        id: potentialCases
        source: anxiety--primary-care-remno---primary/output
  anxiety--primary-care-somnite---primary:
    run: anxiety--primary-care-somnite---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule109
      potentialCases:
        id: potentialCases
        source: anxiety--primary-care-mixture---primary/output
  anxiety--primary-care-chlormethiazole---primary:
    run: anxiety--primary-care-chlormethiazole---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule110
      potentialCases:
        id: potentialCases
        source: anxiety--primary-care-somnite---primary/output
  anxiety--primary-care-zolpidem---primary:
    run: anxiety--primary-care-zolpidem---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule111
      potentialCases:
        id: potentialCases
        source: anxiety--primary-care-chlormethiazole---primary/output
  anxiety--primary-care-tartrate---primary:
    run: anxiety--primary-care-tartrate---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule112
      potentialCases:
        id: potentialCases
        source: anxiety--primary-care-zolpidem---primary/output
  anxiety--primary-care-loprazolam---primary:
    run: anxiety--primary-care-loprazolam---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule113
      potentialCases:
        id: potentialCases
        source: anxiety--primary-care-tartrate---primary/output
  noctamid-anxiety--primary-care---primary:
    run: noctamid-anxiety--primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule114
      potentialCases:
        id: potentialCases
        source: anxiety--primary-care-loprazolam---primary/output
  anxiety--primary-care-dexmedetomidine---primary:
    run: anxiety--primary-care-dexmedetomidine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule115
      potentialCases:
        id: potentialCases
        source: noctamid-anxiety--primary-care---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule116
      potentialCases:
        id: potentialCases
        source: anxiety--primary-care-dexmedetomidine---primary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
  inputModule37:
    id: inputModule37
    doc: Python implementation unit
    type: File
  inputModule38:
    id: inputModule38
    doc: Python implementation unit
    type: File
  inputModule39:
    id: inputModule39
    doc: Python implementation unit
    type: File
  inputModule40:
    id: inputModule40
    doc: Python implementation unit
    type: File
  inputModule41:
    id: inputModule41
    doc: Python implementation unit
    type: File
  inputModule42:
    id: inputModule42
    doc: Python implementation unit
    type: File
  inputModule43:
    id: inputModule43
    doc: Python implementation unit
    type: File
  inputModule44:
    id: inputModule44
    doc: Python implementation unit
    type: File
  inputModule45:
    id: inputModule45
    doc: Python implementation unit
    type: File
  inputModule46:
    id: inputModule46
    doc: Python implementation unit
    type: File
  inputModule47:
    id: inputModule47
    doc: Python implementation unit
    type: File
  inputModule48:
    id: inputModule48
    doc: Python implementation unit
    type: File
  inputModule49:
    id: inputModule49
    doc: Python implementation unit
    type: File
  inputModule50:
    id: inputModule50
    doc: Python implementation unit
    type: File
  inputModule51:
    id: inputModule51
    doc: Python implementation unit
    type: File
  inputModule52:
    id: inputModule52
    doc: Python implementation unit
    type: File
  inputModule53:
    id: inputModule53
    doc: Python implementation unit
    type: File
  inputModule54:
    id: inputModule54
    doc: Python implementation unit
    type: File
  inputModule55:
    id: inputModule55
    doc: Python implementation unit
    type: File
  inputModule56:
    id: inputModule56
    doc: Python implementation unit
    type: File
  inputModule57:
    id: inputModule57
    doc: Python implementation unit
    type: File
  inputModule58:
    id: inputModule58
    doc: Python implementation unit
    type: File
  inputModule59:
    id: inputModule59
    doc: Python implementation unit
    type: File
  inputModule60:
    id: inputModule60
    doc: Python implementation unit
    type: File
  inputModule61:
    id: inputModule61
    doc: Python implementation unit
    type: File
  inputModule62:
    id: inputModule62
    doc: Python implementation unit
    type: File
  inputModule63:
    id: inputModule63
    doc: Python implementation unit
    type: File
  inputModule64:
    id: inputModule64
    doc: Python implementation unit
    type: File
  inputModule65:
    id: inputModule65
    doc: Python implementation unit
    type: File
  inputModule66:
    id: inputModule66
    doc: Python implementation unit
    type: File
  inputModule67:
    id: inputModule67
    doc: Python implementation unit
    type: File
  inputModule68:
    id: inputModule68
    doc: Python implementation unit
    type: File
  inputModule69:
    id: inputModule69
    doc: Python implementation unit
    type: File
  inputModule70:
    id: inputModule70
    doc: Python implementation unit
    type: File
  inputModule71:
    id: inputModule71
    doc: Python implementation unit
    type: File
  inputModule72:
    id: inputModule72
    doc: Python implementation unit
    type: File
  inputModule73:
    id: inputModule73
    doc: Python implementation unit
    type: File
  inputModule74:
    id: inputModule74
    doc: Python implementation unit
    type: File
  inputModule75:
    id: inputModule75
    doc: Python implementation unit
    type: File
  inputModule76:
    id: inputModule76
    doc: Python implementation unit
    type: File
  inputModule77:
    id: inputModule77
    doc: Python implementation unit
    type: File
  inputModule78:
    id: inputModule78
    doc: Python implementation unit
    type: File
  inputModule79:
    id: inputModule79
    doc: Python implementation unit
    type: File
  inputModule80:
    id: inputModule80
    doc: Python implementation unit
    type: File
  inputModule81:
    id: inputModule81
    doc: Python implementation unit
    type: File
  inputModule82:
    id: inputModule82
    doc: Python implementation unit
    type: File
  inputModule83:
    id: inputModule83
    doc: Python implementation unit
    type: File
  inputModule84:
    id: inputModule84
    doc: Python implementation unit
    type: File
  inputModule85:
    id: inputModule85
    doc: Python implementation unit
    type: File
  inputModule86:
    id: inputModule86
    doc: Python implementation unit
    type: File
  inputModule87:
    id: inputModule87
    doc: Python implementation unit
    type: File
  inputModule88:
    id: inputModule88
    doc: Python implementation unit
    type: File
  inputModule89:
    id: inputModule89
    doc: Python implementation unit
    type: File
  inputModule90:
    id: inputModule90
    doc: Python implementation unit
    type: File
  inputModule91:
    id: inputModule91
    doc: Python implementation unit
    type: File
  inputModule92:
    id: inputModule92
    doc: Python implementation unit
    type: File
  inputModule93:
    id: inputModule93
    doc: Python implementation unit
    type: File
  inputModule94:
    id: inputModule94
    doc: Python implementation unit
    type: File
  inputModule95:
    id: inputModule95
    doc: Python implementation unit
    type: File
  inputModule96:
    id: inputModule96
    doc: Python implementation unit
    type: File
  inputModule97:
    id: inputModule97
    doc: Python implementation unit
    type: File
  inputModule98:
    id: inputModule98
    doc: Python implementation unit
    type: File
  inputModule99:
    id: inputModule99
    doc: Python implementation unit
    type: File
  inputModule100:
    id: inputModule100
    doc: Python implementation unit
    type: File
  inputModule101:
    id: inputModule101
    doc: Python implementation unit
    type: File
  inputModule102:
    id: inputModule102
    doc: Python implementation unit
    type: File
  inputModule103:
    id: inputModule103
    doc: Python implementation unit
    type: File
  inputModule104:
    id: inputModule104
    doc: Python implementation unit
    type: File
  inputModule105:
    id: inputModule105
    doc: Python implementation unit
    type: File
  inputModule106:
    id: inputModule106
    doc: Python implementation unit
    type: File
  inputModule107:
    id: inputModule107
    doc: Python implementation unit
    type: File
  inputModule108:
    id: inputModule108
    doc: Python implementation unit
    type: File
  inputModule109:
    id: inputModule109
    doc: Python implementation unit
    type: File
  inputModule110:
    id: inputModule110
    doc: Python implementation unit
    type: File
  inputModule111:
    id: inputModule111
    doc: Python implementation unit
    type: File
  inputModule112:
    id: inputModule112
    doc: Python implementation unit
    type: File
  inputModule113:
    id: inputModule113
    doc: Python implementation unit
    type: File
  inputModule114:
    id: inputModule114
    doc: Python implementation unit
    type: File
  inputModule115:
    id: inputModule115
    doc: Python implementation unit
    type: File
  inputModule116:
    id: inputModule116
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}

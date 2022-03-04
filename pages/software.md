# Software

## Expertise

- Python developer 7jr+,
    - [Pypi.org published](https://pypi.org/project/deep-geometry), Geo and Machine Learning
      ervaring, lees meer op https://arxiv.org/abs/1806.03857
    - QGIS plugin and test engineer: lees erover
      op [mijn blog](https://reinvantveer.github.io/2021/04/10/qgis-plugin-development.html)
- Open source geo engineer 15jr+
- Kubernetes Argo workflow engineer 2jr+, met verschillende bijdragen aan
  het [Argo Helm](https://github.com/argoproj/argo-helm) project
- "Test advocate" 6jr+
- Rust ontwikkelaar 2jr+, met bijdragen aan
    - retro-embedded Rust voor de [Rust Sega Megadrive](https://github.com/ricky26/rust-mega-drive)
    - [Rust Kubernetes Operator prototype](https://github.com/Pscheidl/rust-kubernetes-operator-example/pull/6)

## Voorkeuren
- Open source waar mogelijk
- Toegewijd aan kennisoverdracht: ik ben hier gekomen dankzij diegenen die mij onderwezen hebben!
- Remote of hybride, freelance projecten

## Projecten
### "Side project": tutorial Kubernetes Operators met Argo ecosysteem
_28-2-2022_

Eigenlijk gewoon uit nieuwsgierigheid, maar ook uit grote interesse voor [Argo](https://argoproj.io) zocht ik uit hoe je
_zonder Operator SDK_ toch met minimale inspanning
een [Kubernetes Operator](https://kubernetes.io/docs/concepts/extend-kubernetes/operator/) patroon kon invullen. 
Kubernetes Operators vormen over het algemeen uitbreidingen op de Kubernetes basis-API, maar ze kunnen ook naar 
standaard resources luisteren.

Het komt erop neer dat je met [Argo Events](https://argoproj.github.io/argo-events/)
en [Argo Workflows](https://argoproj.github.io/argo-workflows/)
een volledige operator kan opbouwen, die de volgende voordelen kent:

* Voor eenvoudige functionaliteit is geen custom Docker image vereist, met daarmee minder onderhoudslast
* De operator is op deze wijze met een handvol Kubernetes manifests te realiseren
* De werking van de operator is vele malen beter inzichtelijk omdat deze in de Argo gebruikersinterface is te
  inspecteren

[Lees hier de volledige tutorial](https://reinvantveer.github.io/2022/01/29/easier-operator.html)

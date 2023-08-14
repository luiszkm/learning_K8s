
# Learning K8s


Introdução ao Kubernetes (K8s)
Este repositório contém informações e exemplos relacionados ao Kubernetes (K8s). Aqui, você encontrará informações sobre vários conceitos e recursos do Kubernetes, incluindo Deployments, Services, Metric Server, Horizontal Pod Autoscaler (HPA), StatefulSets, ConfigMaps e muito mais.

## O que é Kubernetes?
O Kubernetes é uma plataforma de código aberto que automatiza a implantação, o dimensionamento e a operação de aplicativos em contêineres. Ele oferece um ambiente para gerenciar e orquestrar aplicativos contêinerizados de maneira eficiente, fornecendo escalabilidade, resiliência e automação.

Conteúdo
### 1. Deployments
#### O que são Deployments?
Um Deployment no Kubernetes é um objeto que gerencia a implantação de pods em um cluster. Ele permite que você defina como os pods serão implantados, atualizados e recriados, garantindo alta disponibilidade e facilidade de rollout.

#### Como criar um Deployment?
Um Deployment pode ser definido em um manifesto YAML, especificando os detalhes do contêiner, a quantidade de réplicas, estratégias de rollout, entre outros. Ao criar um Deployment, você define como a aplicação é implantada e como as atualizações são tratadas.

#### Estratégias de rollout (Recreate, RollingUpdate)
As estratégias de rollout determinam como as atualizações de um Deployment são aplicadas. O tipo "Recreate" recria todas as instâncias de uma vez, enquanto o tipo "RollingUpdate" atualiza gradualmente os pods.

#### Rollback de um Deployment
Em caso de problemas após uma atualização, é possível reverter um Deployment para uma versão anterior. O Kubernetes permite que você reverta facilmente para uma revisão anterior do Deployment.
### 2. Services
#### O que são Services?
Um Service no Kubernetes é uma abstração que define um conjunto de pods e uma política de acesso a esses pods. Ele oferece uma maneira de expor aplicativos e serviços para dentro ou fora do cluster.

#### Tipos de Services (ClusterIP, NodePort, LoadBalancer)
Existem vários tipos de Services no Kubernetes. O tipo ClusterIP cria um endereço IP interno para o Service, o tipo NodePort expõe o Service em uma porta de nó específica e o tipo LoadBalancer provisiona um balanceador de carga externo para o Service.

#### Como expor seus aplicativos
Os Services permitem que você exponha seus aplicativos de maneira controlada. Eles redirecionam o tráfego para os pods que correspondem às labels selecionadas, garantindo a alta disponibilidade.
### 3. Metric Server
#### Monitoramento de métricas do cluster
O Metric Server é um componente do Kubernetes que coleta e expõe métricas de uso de recursos dos nós e dos pods do cluster. Ele é fundamental para dimensionar e gerenciar os recursos de forma eficiente.

#### Como instalar e configurar o Metric Server
Para coletar métricas, o Metric Server deve ser instalado no cluster. Você pode configurá-lo para coletar dados de CPU, memória e outros recursos.
### 4. Horizontal Pod Autoscaler (HPA)
#### O que é um HPA?
O HPA é um mecanismo que ajusta automaticamente o número de réplicas de um Deployment com base nas métricas definidas, como utilização de CPU ou memória.

#### Como criar um HPA?
Você pode criar um HPA definindo as métricas a serem monitoradas e os limites de escalabilidade. O HPA aumentará ou diminuirá as réplicas conforme a demanda.

#### Escalando automaticamente com base em métricas
O HPA permite que você automatize a escalabilidade do seu aplicativo. Se a demanda aumentar, o número de réplicas aumentará para lidar com a carga. Se a demanda diminuir, as réplicas serão reduzidas.
### 5. StatefulSets
#### O que são StatefulSets?
Os StatefulSets são usados para aplicativos que requerem identidades únicas, armazenamento persistente e ordem de inicialização específica. Eles garantem que os pods tenham nomes e ordens previsíveis.

#### Como criar e usar StatefulSets
Ao criar um StatefulSet, você define como os pods são criados e como o armazenamento persistente é gerenciado. Os pods têm nomes previsíveis, permitindo que eles mantenham seus estados individuais.

#### Persistência de dados em aplicativos stateful
Os StatefulSets são ideais para aplicativos que precisam de armazenamento persistente e identidades consistentes, como bancos de dados e sistemas de mensagens.
### 6. ConfigMaps
#### O que são ConfigMaps?
ConfigMaps são objetos do Kubernetes que armazenam dados de configuração em formato de chave-valor. Eles separam as configurações do código e permitem que você as modifique sem alterar o código do contêiner.

#### Como criar e usar ConfigMaps
Você pode criar ConfigMaps a partir de arquivos ou variáveis de ambiente. Eles podem ser montados como volumes em contêineres ou definidos como variáveis de ambiente.

#### Gerenciamento de configurações em contêineres
Usar ConfigMaps simplifica a gestão de configurações em seus contêineres, permitindo que você altere as configurações sem recriar os pods.
#### Contribuições
Sinta-se à vontade para contribuir para este repositório adicionando mais informações, exemplos ou corrigindo erros. Se você tiver dúvidas ou sugestões, abra uma issue ou envie um pull request.


## Documentação

- [Documentação oficial do Kubernetes](https://kubernetes.io/docs/home/)
- [Kubernetes by Examples](https://chat.openai.com/c/979d7713-a907-40bb-913c-229242268432#:~:text=Kubernetes%20by%20Example)
- [Kubernetes Handbook](https://kubernetes-handbook.dev/)


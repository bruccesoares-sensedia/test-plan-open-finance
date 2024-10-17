# language: pt

Cenário: Cliente que possui solicitação em andamento é impedido de iniciar nova solicitação
Dado que o cliente possui pedido de portabilidade em andamento
E solicita novo pedido à proponente
Quando a proponente consulta informações sobre as solicitações do cliente
E identifica que tem já pedido em andamento
Então o cliente é impedido de iniciar nova solicitação

Cenário: Cliente que NÃO possui solicitação em andamento deve prosseguir com nova solicitação
Dado que o cliente não possui pedido de portabilidade em andamento
E solicita novo pedido à proponente
Quando a proponente consulta informações sobre as solicitações do cliente
E identifica que tem NÃO há pedido em andamento
Então o cliente deve prosseguir com a solicitação
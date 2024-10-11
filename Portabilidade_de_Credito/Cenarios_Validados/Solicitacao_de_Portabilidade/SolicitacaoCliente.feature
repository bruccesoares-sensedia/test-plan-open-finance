# language: pt

Funcionalidade: Cliente solicita Portabilidade de Crédito
  O Cliente possui um contrato de crédito na Instituição Credora 
  e deseja fazer a portabilidade de crédito para a Instituição Proponente,
  buscando melhores condições de pagamento.
  
  Contexto: 
    Dado que o cliente tem conta corrente em duas instituições financeiras
    E possui contrato de crédito em uma dessas instituições
    #Cliente também pode solicitar portabilidade sem ser cliente da proponente. Elaborar novo cenário

Cenário: Pedido de portabilidade
Dado que o cliente está na jornada com a instituição proponente
E solicita portabilidade de crédito
Quando o cliente seleciona o contrato a ser portado
E confirma o pedido de portabilidade
Então instituição proponente notifica que recebeu o pedido com sucesso

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

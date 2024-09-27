# language: pt

Funcionalidade: Cliente solicita Portabilidade de Crédito
  O Cliente possui um contrato de crédito na Instituição Credora 
  e deseja fazer a portabilidade de crédito para a Instituição Proponente,
  buscando melhores condições de pagamento.
  
  Contexto: 
    Dado que o cliente tem conta corrente em ambas as instituições
    E já deu consentimento via Open Finance.
    E deseja solicitar portabilildade de crédito pelo app.
    E possui celular com acesso à internet.

Cenário: Pedido pelo app
Dado que o cliente tem um contrato de crédito com a instituição credora
E acessa o app da instituição Proponente para consultar a Portabilidade
Quando o cliente informa o contrato de portabilidade a ser portado e confirma o pedido de portabilidade
  | Campo    |  Valor                |
  | Contrato |  <Número do contrato> |
Então o app da instituição Proponente notifica que recebeu o pedido com sucesso

Cenário: Pedido pelo app sem consentimento
Dado que o cliente tem um contrato de crédito com a instituição credora
E acessa o app da instituição Proponente para consultar a Portabilidade
E ele não tem um consentimento de Empréstimo
Quando o cliente informa o contrato de portabilidade <número> a ser portado 
E confirma o pedido de portabilidade
Então o app da instituição Proponente Solicita o consentimento de emprestimos 
E redireciona o cliente para o APP da Instituição credora para aprovar o consentimento

Cenário: Sem contrato, sem portabilidade
Dado que o cliente não possui contrato de crédito com uma instituição financeira
E acessa o app da instituição
Quando o cliente consulta área de crédito e portabilidade
Então o app não permite solicitar portabilidade

Cenário: Cliente nega consentimento de acesso aos dados
Dado que o cliente tem um contrato de crédito com a instituição credora
E acessa o app da instituição proponente para consultar a portabilidade
E solicita a portabilidade de crédito
E a proponente requer consentimento do cliente para acesso aos dados do contrato
Quando o cliente nega o consentimento
Então é cancelado o pedido de portabilidade de crédito

# Exemplo de um Caso de Teste com base na História de Usuário "Mapeamento de Dados Necessários"
Cenário: Proponente solicita acesso aos dados
Dado a Proponente pede a Credora acesso aos dados de contrato do Cliente
E a Proponente requer os dados obrigatórios:
  | Campo                        | Valor                               |
  | CPF                          | <CPF do Cliente>                    |
  | Número do contrato           | <Número do contrato>                |
  | Dados da operação de crédito | <Dados da operação de crédito>      |
  | Proposta de crédito          | <Proposta da Instituição Proponente> |
Quando os dados forem mapeados
E os campos obrigatórios validados
Então a Credora deve processar a solicitação de portabilidade
E conceder os dados à Proponente

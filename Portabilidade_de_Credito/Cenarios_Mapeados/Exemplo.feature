# language: pt

# Exemplo de um Caso de Teste E2E com base na História de Usuário "Mapeamento de Dados Necessários"

Funcionalidade: Mapeamento dos dados necessários
    Durante o processo de solicitação de portabilidade considere que o cliente
    já possui uma relação com a Instituição Credora e está iniciando ou mantendo uma relação com a Instituição Proponente.
    Ambas as instituições já dispõem dos dados cadastrais do cliente via Open Finance.
    O cliente deseja realizar a portabilidade de crédito.

Cenário: Proponente envia dados para solicitar portabilidade de crédito
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
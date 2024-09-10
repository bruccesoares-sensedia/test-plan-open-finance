Feature: Liquidação

    Descrição da feature


Scenario: Identificar todos os dados necessários para viabilizar a liquidação da operação
  Given que uma operação está sendo liquidada
  When eu coleto os dados necessários
  Then a API deve ser capaz de processar esses dados para viabilizar a liquidação correta


Scenario: Avaliar como deve funcionar o registro e armazenamento das informações
  Given que informações de liquidação precisam ser registradas
  When o modelo de registro é definido
  Then o modelo deve assegurar conformidade e rastreabilidade



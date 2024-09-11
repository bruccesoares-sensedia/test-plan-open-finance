Feature: Efetivação

    Descrição da feature


Scenario: Implementar regra que permita o envio de contraproposta em até 3 dias úteis
  Given que uma contraproposta está sendo preparada
  When a contraproposta é finalizada
  Then ela deve ser enviada em até 3 dias úteis pela instituição Credora


Scenario: Estabelecer regra que permita ao devedor desistir da portabilidade antes da liquidação
  Given que a portabilidade ainda não foi liquidada
  When o devedor deseja desistir da portabilidade
  Then a desistência deve ser processada de forma eficiente pela instituição Proponente


Scenario: Implementar regra para que a instituição Credora solicite a transferência dos recursos
  Given que a contraproposta não foi aceita
  When a transferência de recursos é solicitada
  Then a instituição Proponente deve realizar a transferência em até 3 dias úteis


Scenario: Implementar regra onde a instituição Credora deve confirmar o recebimento dos recursos
  Given que a transferência de recursos foi concluída
  When os recursos são recebidos pela instituição Credora
  Then o recebimento deve ser confirmado em até 2 dias úteis


Scenario: Estruturar manual com motivos padronizados de recusa
  Given que uma solicitação de portabilidade foi recusada
  When eu reviso os motivos de recusa
  Then o manual deve ser claro e abrangente, facilitando a comunicação entre as partes


Scenario: Garantir que a instituição Credora remeta um documento confirmando a efetivação
  Given que a portabilidade foi efetivada
  When a documentação de confirmação é emitida
  Then a instituição Credora deve remeter o documento à Proponente em até 2 dias úteis


Scenario: Estruturar cenários de disputa e como eles serão resolvidos
  Given que disputas podem surgir durante o processo de portabilidade
  When eu defino cenários de disputa
  Then as disputas devem ser resolvidas de forma eficiente com base em cenários predefinidos

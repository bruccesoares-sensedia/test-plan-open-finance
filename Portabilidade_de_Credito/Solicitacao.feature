Feature: Solicitação de Portabilidade

              Descrição da feature
    

        Scenario: Mapear os dados necessários para a solicitação da portabilidade
            Given que eu estou no sistema de solicitação de portabilidade
             When eu preencho os dados necessários para a solicitação
                  | Campo                        | Valor                                           |
                  | CPF                          | <CPF do devedor>                                |
                  | Número do contrato           | <Número do contrato>                            |
                  | Dados da operação de crédito | <Dados da operação de crédito>                  |
                  | Proposta de crédito          | <Proposta de crédito da instituição proponente> |
                  | Contato do devedor           | <Informações de contato do devedor>             |
                  | Contato do proponente        | <Informações de contato do proponente>          |
             Then todos os dados essenciais devem estar disponíveis e organizados para iniciar o processo de portabilidade


        Scenario: Avaliar a suficiência dos dados atualmente disponíveis nas APIs
            Given que eu estou acessando as APIs de dados transacionais
             When eu avalio os dados disponíveis para o processo de solicitação de portabilidade
             Then a avaliação deve confirmar a suficiência dos dados ou identificar a necessidade de ajustes


        Scenario: Viabilizar um processo de consentimento duplo
            Given que o processo de portabilidade está em andamento
             When eu implemento o processo de consentimento duplo na instituição Proponente
             Then o consentimento duplo deve ser testado e implementado com sucesso


        Scenario: Desenvolver regra para recusar solicitações simultâneas de portabilidade
            Given que eu estou configurando regras de portabilidade
             When eu desenvolvo uma regra para recusar solicitações simultâneas
             Then as tentativas simultâneas devem ser sinalizadas e recusadas garantindo a antecedência do processo


        Scenario: Mapear e definir as mensagens ou alertas a serem exibidos
            Given que eu estou configurando notificações no sistema
             When eu defino mensagens para situações como aprovação de crédito ou ausência de proposta
             Then as mensagens devem ser claras e informativas, melhorando a experiência do usuário


        Scenario: Permitir que o cliente receba e aceite contrapropostas via canal digital
            Given que um cliente está usando o canal digital
             When o cliente recebe uma contraproposta
             Then o cliente deve poder aceitar ou recusar a contraproposta digitalmente


        Scenario: Prevenir o redirecionamento para o ambiente da instituição credora
            Given que o cliente está visualizando as condições operacionais do novo contrato
             When o cliente prossegue com a solicitação de portabilidade
             Then o fluxo deve ser mantido dentro do ambiente da instituição proponente sem redirecionamento


        Scenario: Avaliar a necessidade de criar uma regra para impedir a continuidade da portabilidade
            Given que eu estou avaliando a viabilidade da portabilidade
             When a nova prestação ou prazo é superior ao contrato original
             Then a portabilidade deve ser impedida ou solicitar um consentimento específico do cliente


        Scenario: Prever mecanismos para gerenciar situações de devolução de TED ou bloqueios
            Given que eu estou gerenciando a solicitação de portabilidade
             When situações de devolução de TED ou bloqueios ocorrem
             Then um mecanismo deve ser implementado para prevenir a blindagem do contrato mantendo a integridade do processo


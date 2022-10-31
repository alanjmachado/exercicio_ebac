#pt: language: pt

            US-0001 - Configurar produto
            Critérios de aceitação:
            1 - Seleção de cor, tamanho e quantidade devem ser obrigatórios
            2 - Deve permitir apenas 10 produtos por venda
            3 - Quando eu clicar no botão "limpar" deve voltar ao estado original

            Cenário: Configurar produto definindo cor, tamanho e quantidade
            Dado a definição de escolha de um produto
            Quando for selecionado cor, tamanho e quantidade
            Então deve ser possível adicionar ao carrinho com as configurações escolhidas

            Esquema do Cenário: Configurar produto definindo cor, tamanho e quantidade
            Dado a definição de escolha de um <produto>
            Quando for selecionado <cor>, <tamanho> e <quantidade>
            Então deve ser possível adicionar ao carrinho com as configuraçõs escolhidas
            Exemplos:
            | Produto                      | Cor    | Tamanho | Quantidade |
            | Abominable Hoodie            | Blue   | M       | 1          |
            | Aero Daily Fitness Tee       | Brown  | XL      | 2          |
            | Aether Gym Pant              | Green  | 36      | 1          |
            | Arcadio Gym Short            | Black  | 34      | 1          |
            | Ariel Roll Sleeve Sweatshirt | Purple | S       | 1          |

            Cenário: Configurar produto com parâmetro de quantidade máxima de 10 produtos
            Dado a definição de escolha de um produto
            Quando for selecionado quantidade acima de 10 produtos por venda
            Então deve gerar um alerta informando a permissão de ser possível apenas 10 produtos por venda
            
            Cenário: Configurar produto utilizando funcionalidade "botão limpar"
            Dado a definição de escolha de um produto
            Quando eu clicar no botão limpar
            Então deve voltar ao estado original
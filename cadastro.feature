#pt: language: pt

US_0003 - Tela de cadastro
            Critérios de aceitação:
            1 - Deve ser cadastrado com todos os dados obrigatórios, marcado com asteriscos
            2 - Não deve permitir campo e-mail com formato inválido. Sistema deve inserir uma mensagem de erro
            3 - Ao tentar cadastrar com campo vazios, deve exibir mensagem de alerta

            Cenário: Tela de cadastro com todos os dados obrigatórios
            Dado que ao acessar a tela de "Checkout"
            Quando for preenchido todos os campos marcados como obrigatórios "com asterisco"
            E finalizar a compra
            Então o cadastro deve ser efetivado

            Esquema do Cenário: Tela de cadastro com campo de e-mail com formato inválido
            Dado que ao acessar a tela de "Checkout"
            Quando for preenchido os campos <Nome>, <Sobrenome>, <Pais>, <Endereco>, <Cidade>, <CEP>, <Telefone>, <Endereco de email>
            E finalizar a compra
            Então deve exibir <mensagem> informando o formato do email está inválido
            Exemplos:
            | Nome   | Sobrenome | Pais     | Endereco         | Cidade         | CEP     | Telefone    | Endereco de email    | mensagem                   |
            | Pedro  | Silva     | Brasil   | Rua sem saida    | Rio de Janeiro | 8800000 | 21966548979 | pedro_silvagmail.com | endereco de email inválido |
            | Pablo  | Cabral    | Colombia | Av Imperador     | Bogotá         | 0000000 | 55322222222 | pablo.cabral@ebac    | endereco de email inválido |
            | Victor | Hugo      | França   | Av Independencia | Paris          | 0000000 | 55355555555 | victorhugo@gmail,com | endereço de email inválido |

            Cenário: Tela de cadastro com campos vazios
            Dado que ao acessar a tela de "Checkout"
            Quando for realizada tentativa de finalizar a compra sem o preenchimento dos campos obrigatórios
            Então deve exibir mensagem de alerta informano a necessidade de preenchimento dos campos obrigatórios
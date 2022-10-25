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

            Esquema do Cenário: Configurar produto com parâmetro de quantidade máxima de 10 produtos
            Dado a definição de escolha de um <produto>
            Quando for selecionado <quantidade> acima de 10 produtos por venda
            Então deve gerar um alerta informando a permissão de ser possível apenas 10 produtos por venda
            Exemplos:
            | Produto                | Quantidade |
            | Aero Daily Fitness Tee | 5          |
            | Arcadio Gym Short      | 6          |


            Cenário: Configurar produto utilizando funcionalidade "botão limpar"
            Dado a definição de escolha de um produto
            Quando eu clicar no botão limpar
            Então deve voltar ao estado original


            US-0002 - Login na plataforma
            Critérios de aceitação:
            1 - Ao inserir dados válido deve ser direcionado para a tela de checkout
            2 - Ao inserir um dos campos inválidos deve exibir uma mensagem de alerta "Usuário ou senha inválidos"

            Esquema do Cenário: Login na plataforma com dados válidos
            Dado que ao efetivar o login na plataforma
            Quando digitar <endereco de email> valido
            E digitar <senha> valida
            Então deve ser direcionado para a tela de checkout
            Exemplos:
            | endereco de email   | senha     |
            | michele@ebac.com.br | #Usr12549 |
            | jair@ebac.com.br    | $f3r354   |
            | maria@gmail.com     | G%u54889  |

            Esquema do Cenário: Login na plataforma com dados inválidos
            Dado que ao efetivar o login na plataforma
            Quando digitar <endereco de email> invalido
            E digitar <senha>
            Então deve exibir <mensagem> de alereta "Usuário ou senha inválidos"
            Exemplos:
            | endereco de email   | senha     |
            | michele@ebac,com.br | #Usr12549 |
            | jair@ebac.c.br      | $f3r354   |
            | maria@gmail         | G%u54889  |
            |                     | 302111    |

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


















pelo menos 1 cenário simples, 1 cenário com tabelas, 1 cenário com Exemplos,
salvar o arquivo e subri no github + plataforma ebac


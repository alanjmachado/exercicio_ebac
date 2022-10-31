#pt: language: pt

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

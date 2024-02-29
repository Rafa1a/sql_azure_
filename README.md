# Projeto Banco de Dados SQL no Azure

## Criação do Banco de Dados SQL no Azure

Para começar, siga os passos abaixo para criar o banco de dados SQL no Azure:

1. Faça login no [Portal do Azure](https://portal.azure.com/).
2. No painel de navegação à esquerda, selecione "Criar um recurso".
3. Na barra de pesquisa, digite "SQL Database" e pressione Enter.
4. Selecione "Banco de Dados SQL do Azure" nos resultados da pesquisa.
5. Clique em "Criar" na página do Banco de Dados SQL do Azure.
6. Preencha as informações necessárias, como nome do banco de dados, grupo de recursos, localização, nível de serviço, etc.
7. Clique em "Revisar + Criar" e, em seguida, em "Criar" para criar o banco de dados.
8. Aguarde até que o processo de criação seja concluído.

![Criar Banco de Dados SQL no Azure](image/bancodedados_criacao.png)

## Configuração do Firewall e Segurança

Certifique-se de configurar corretamente as opções de segurança, firewall e acesso ao banco de dados para garantir a integridade e a segurança dos seus dados.

Como para o caso de uso vamos : 

1. No portal do Azure, navegue até o seu banco de dados SQL recém-criado.
2. Na página de visão geral do banco de dados, selecione "Rede:Mostrar configurações de rede".
3. Permita que determinados endereços IP da Internet pública acessem seu recurso.
4. Clique em "Adicionar IP" para adicionar seu endereço IP atual à lista de permissões.
5. Se desejar, você também pode configurar regras de firewall adicionais para permitir acesso de outros endereços IP específicos ou intervalos de endereços.

## Conectar com o banco
Execute o comando no PowerShell ou Bash dentro do azure : 

az sql db show-connection-string --client sqlcmd --name <nome do banco>

Resposta é algo como : 
`sqlcmd -S tcp:fullsstackfacu_teste.database.windows.net,1455 -d fullstack -U <username> -P <password> -N -l 30`
Vamos conectar com o banco executando o comando acima :

![Conectando ao Banco de Dados SQL no Azure](image/conectando_banco.sql.png)

## Sobre o Projeto

[Descrição breve do projeto e sua finalidade]

## Autor

[Seu nome]


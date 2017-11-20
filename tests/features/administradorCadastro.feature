Feature: Cadastro de usu�rios (Gabriel + Nunes)
As a administrador
I want to cadastrar professores, monitores e escolas
So that turmas possam ser formadas

Scenario: Cadastro de professor
Given estou logado como administrador
And o sistema n�o possui um usu�rio cadastrado com email "fatima@"
And o sistema n�o possui um professor cadastrado com nome �F�tima�
When forne�o o email "fatima@"
And forne�o o nome �F�tima�
And forne�o a senha �123�
And tento cadastrar um professor
Then o sistema armazena um professor com nome �F�tima�, email "fatima@" e senha �123�

Scenario: Cadastro de monitor
Given estou logado como administrador
And o sistema n�o possui um usu�rio cadastrado com email "bernardo@"
And o sistema n�o possui um monitor com nome �Bernardo�
When forne�o o CPF �1111111112�
And forne�o o nome �Bernardo�
And forne�o a senha �321�
And tento cadastrar um monitor
Then o sistema armazena um professor com nome �Bernardo�, email "bernardo@" e senha �321�

Scenario: Cadastro de escola
Given estou logado como administrador
And o sistema n�o possui a escola �Col�gio Salesiano�
When forne�o a escola �Col�gio Salesiano�
And tento cadastrar uma escola
Then o sistema armazena a escola com nome �Col�gio Salesiano�

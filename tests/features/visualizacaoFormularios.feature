Feature: Visualiza��o de formul�rios (Gabriel)
	As a aluno cadastrado
	I want to visualizar os formul�rios dispon�veis
	So that possa exercitar sobre o assunto.

Scenario: Escolhendo formul�rio de uma lista
Given estou na p�gina �formul�rios associados ao sistema digest�rio�
And vejo a lista de formul�rios associados ao sistema digest�rio
And vejo o formul�rio �X� na lista de formul�rios associados ao sistema digest�rio
When seleciono o formul�rio �X� da lista de formul�rios associados ao sistema digest�rio
Then vejo o conte�do do formul�rio �X�

Scenario: Escolhendo lista de formul�rios de outro sistema
Given estou na p�gina �formul�rios associados ao sistema digest�rio�
And vejo a lista de formul�rios associados ao sistema digest�rio
And vejo a lista de sistemas com formul�rios dispon�veis
And vejo que a lista de sistemas com formul�rios dispon�veis tem o sistema digest�rio
And vejo que a lista de sistemas com formul�rios dispon�veis tem o sistema respirat�rio
When seleciono o sistema respirat�rio da lista de sistemas com formul�rios dispon�veis
Then vejo a p�gina �formul�rios associados ao sistema respirat�rio�

Scenario: Parando de visualizar formul�rio
Given estou visualizando o conte�do do formul�rio �X� do sistema digest�rio
When escolho deixar de visualizar o conte�do do formul�rio �X�
Then vejo a p�gina �formul�rios associados ao sistema digest�rio�

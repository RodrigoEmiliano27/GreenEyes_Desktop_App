# GreenEyes_Local_Server

O projeto é uma solução computacional que tem como principal objetivo auxiliar fazendeiros no controle de pragas em plantações. Seria utilizado um drone que fotografasse regiões das plantações. As fotos seriam enviadas pelo fazendeiro por meio de uma aplicação desktop (WPF) para um servidor de storage na nuvem (Azure). Do storage, a imagem vai para um servidor que possui um serviço de visão computacional que retorna se a imagem possui pragas ou não. A resposta para cada imagem é gravada no banco de dados MongoDB e é consultada por uma aplicação WEB em ASP.NET CORE MVC.

Observação: Esse repositório é para a aplicação WPF.

# Sobre o vídeo 🎥
O link do vídeo está disponível no OneDrive:
https://1drv.ms/v/s!Ag-akAKT0hLMgjB1YEKvvOk9O9o_?e=Pnr6sY

## Arquitetura

![Alt text](Arquitetura.png?raw=true "Arquitetura")

### Postman

[![Run in Postman](https://run.pstmn.io/button.svg)](https://app.getpostman.com/run-collection/23312355-15258a28-486c-4684-ac6f-130abaa3d4f4?action=collection%2Ffork&collection-url=entityId%3D23312355-15258a28-486c-4684-ac6f-130abaa3d4f4%26entityType%3Dcollection%26workspaceId%3D415e2cc9-5bb2-4db7-a496-21837ad80a23)

# Grupo 👥
Grupo: Gabriel Alves, Lucas Costa e Rodrigo Emiliano.

# imunus

Aplicativo voltado para pacientes portadores de Esclerose Múltipla.


## Funcionalidades:

Atualmente o app encontra-se funcional para dispositivos Android, com as seguintes features:

* Registro de sentimentos
* Registro de sintomas
* Relatório mensal de sintomas e sentimentos
* Login com Google

#### Branch mais estável: `develop`


## Tecnologias
* Flutter: v2.10.2 (detalhes sobre as bibliotecas podem ser encontradas no arquivo pubspack.yaml)
* Colab Google (utilizamos para poder fazer a análise de sentimentos): https://colab.research.google.com/drive/1lvgNEDesSKrsxRBK9C_24C-WZdALL8HV#scrollTo=sIKqh-QDAZJc

_OBS._: Após rodar o Colab e aguardar alguns segundos, na última célula será gerado um link público para o acesso do endpoint que usamos para classificar o texto.

Você deve pegar este link e colocar no arquivo `lib/services/ml_service.dart`, no atributo `_baseUrl`.


## Executando o projeto...

Para executar o projeto, conecte um emulador ou o seu dispositivo Android e execute os comandos:

```
flutter clean
flutter pub get
flutter run
```

Ou então você rodar pelo seu AndroidStudio ou VSCode(recomendado).
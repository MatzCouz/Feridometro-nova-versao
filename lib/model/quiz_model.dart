import 'package:timers_app/widgets/quiz.dart';

class QuizModel {
  String alt_A;
  String alt_B;
  String alt_C;
  String alt_D;
  String question;
  String image = "";
  String correct;
  String select = "";

  QuizModel(this.question, this.alt_A, this.alt_B, this.alt_C, this.alt_D,
      this.correct, this.image);
}

List<QuizModel> e_quiz = [
  QuizModel("O que significa dizer que a borda da lesão está macerada?",
      "Extravasamento de exsudato e umidade excessiva",
      "Está extremamente ressecada",
      "Apresenta uma cor mais avermelhada",
      "Nenhuma das alternativas",
      "Extravasamento de exsudato e umidade excessiva",
      ""
  ),
  QuizModel("A borda de uma lesão que enrola sobre si mesma deve ser chamada de:",
      "Epíbole",
      "Hiperqueratose",
      "Descolada",
      "Definida",
      "Epíbole",
      ""
  ),
  QuizModel("A sobreposição da camada córnea da epiderme, formando um tecido caloso, bem espesso, endurecido, de cor amarelada é chamada de:",
      "Epíbole",
      "Hiperqueratose",
      "Maceração",
      "Descolamento",
      "Hiperqueratose",
      ""
  ),
  QuizModel("Quando as bordas não estão aderidas ao leito da lesão, ocorre:",
      "Epibole",
      "Hiperqueratose",
      "Maceração",
      "Descolamento",
      "Descolamento",
      ""
  ),
  QuizModel("Qual o tipo de borda presente no leito dessa lesão?",
      "Macerada",
      "Descolada",
      "Hiperqueratose",
      "Epibolia",
      "Macerada",
      "asserts/5-E.jpg"
  ),
  QuizModel("Qual o tipo de borda presente no leito dessa lesão?",
      "Macerada",
      "Descolada",
      "Hiperqueratose",
      "Epibolia",
      "Epibolia",
      "asserts/6-E.jpg"
  ),
  QuizModel("Qual o tipo de borda presente no leito dessa lesão?",
      "Macerada",
      "Descolada",
      "Hiperqueratose",
      "Epibolia",
      "Hiperqueratose",
      "asserts/7-E.png"
  ),

];

List<QuizModel> m_quiz = [
  QuizModel("Para avaliação do exsudato é necessário considerar:",
      "Cor",
      "Odor",
      "Quantidade",
      "Todas as alternativas",
      "Todas as alternativas",
      ""
  ),
  QuizModel("O tipo de exsudato amarelado, acastanhado ou esverdeado, composto por proteínas, leucócitos e restos celulares. Sinaliza infecção e pode estar associado a odor fétido, deve ser denominado de:",
      "Exsudato seroso",
      "Exsudato sanguinolento",
      "Exsudato purulento",
      "Exsudato piosanguinolento",
      "Exsudato purulento",
      ""
  ),
  QuizModel("São curativos usados para fornecer umidade à lesão, exceto:",
      "Hidrogeis",
      "Alginato de Cálcio",
      "Ácidos Graxos Essenciais",
      "Ácido hialurônico",
      "Alginato de Cálcio",
      ""
  ),
  QuizModel("Qual desses curativos não deve ser utilizado para controle do excesso de exsudato da lesão:",
      "Hidrofibras",
      "Fibras hidrodesbridantes",
      "Espumas de Poliuretano",
      "Hidrogeis",
      "Hidrogeis",
      ""
  ),
  QuizModel("O tratamento ativo da ferida que promove sua cicatrização em ambiente úmido, por meio de uma pressão subatmosférica controlada e aplicada localmente é chamado de:",
      "Terapia por pressão Negativa",
      "Ozionioterapia",
      "Fotobiomodulação",
      "Oxigenoterapia Hiperbárica",
      "Terapia por pressão Negativa",
      ""
  ),

];

List<QuizModel> i_quiz = [
  QuizModel("São sinais e sintomas de inflamação numa ferida, exceto:",
      "Dor",
      "Calor",
      "Rubor",
      "Ressecamento",
      "Ressecamento",
      ""
  ),
  QuizModel("É considerando um sinal clínico da presença de biofilme no leito de uma ferida:",
      "Presença de tecido de granulação saudável",
      "Material gelatinoso na superfície da ferida que se forma rapidamente apesar da limpeza/desbridamento, exsudato em grandes volumes",
      "Redução do exsudato",
      "Sinais de infecção < 30 dias",
      "Material gelatinoso na superfície da ferida que se forma rapidamente apesar da limpeza/desbridamento, exsudato em grandes volumes",
      ""
  ),
  QuizModel("Qual o método considerado padrão-ouro para identificação do biofilme em feridas?",
      "Diagnóstico Clínico",
      "Teste de cultura microbiológica",
      "Bacterioscopia do material coletado no leito da lesão antes de realizar a limpeza",
      "Biópsia do tecido",
      "Biópsia do tecido",
      ""
  ),
  QuizModel("Qual solução de limpeza é capaz de remover biofilme do leito de uma ferida?",
      "Solução fisiológica 0,9%",
      "Iodopovidona",
      "PHMB",
      "Água potável",
      "PHMB",
      ""
  ),
  QuizModel("Tratamento do biofilme envolve:",
      "Limpeza da ferida e pele perilesional",
      "Desbridamento regular",
      "Utilização soluções antissépticas e coberturas antimicrobianas para uso tópico",
      "Todas as alternativas",
      "Todas as alternativas",
      ""
  ),

];

List<QuizModel> t_quiz = [
  QuizModel(
      "Qual o tipo de tecido que está presente no leito dessa lesão?",
      "Tecido de granulação",
      "Tecido de epitelização",
      "Necrose de coagulação ou escara",
      "Necrose de liquefação ou esfacelo",
      "Necrose de liquefação ou esfacelo",
      "asserts/LETRAT_NECROSE DE LIQUEFACAO (2).jpg"),
  QuizModel(
    "Qual o tipo de tecido que está presente no leito dessa lesão?",
    "Tecido de granulação",
    "Tecido de epitelização",
    "Necrose de coagulação ou escara",
    "Necrose de liquefação ou esfacelo",
    "Necrose de coagulação ou escara",
    "asserts/LETRAT_DESBRIDAMENTO.jpg",
  ),
  QuizModel(
      "Qual o tipo de tecido que está presente no leito dessa lesão?",
      "Tecido de hiper granulação",
      "Tecido de epitelização",
      "Necrose de coagulação ou escara",
      "Necrose de liquefação ou esfacelo",
      "Tecido de hiper granulação",
      "asserts/LETRAT_hipergranulaçao.jpg"),
  QuizModel(
      "Qual o tipo de tecido que está presente no leito dessa lesão?",
      "Tecido de granulação",
      "Tecido de epitelização",
      "Necrose de coagulação ou escara",
      "Necrose de liquefação ou esfacelo",
      "Necrose de liquefação ou esfacelo",
      "asserts/LETRAT_Necrose de liquefaçao.jpg"),
  QuizModel(
      "Qual o tipo de tecido que está presente no leito dessa lesão?",
      "Tecido de granulação",
      "Necrose de coagulação ou escara",
      "Necrose de liquefação ou esfacelo",
      "Necrose gangrenosa ou gangrena",
      "Necrose gangrenosa ou gangrena",
      "asserts/LETRAT_NECROSE GANGRENOSA.jpg"),
  QuizModel(
      "O tecido recém-cicatrizado, com coloração rosa clara ou avermelhada, brilhante que prolifera rapidamente a partir das bordas é chamado de:",
      "Tecido de granulação",
      "Tecido de epitelização",
      "Necrose de coagulação ou escara",
      "Necrose de liquefação ou esfacelo",
      "Tecido de epitelização",
      ""),
  QuizModel(
      "Paciente idoso, 65 anos, acamado, apresenta lesão por pressão localizada na região sacro-glútea. Qual o tipo de tecido que está presente no leito dessa lesão?",
      "Tecido de granulação",
      "Tecido de epitelização",
      "Necrose de coagulação ou escara",
      "Necrose de liquefação ou esfacelo",
      "Necrose de coagulação ou escara",
      "asserts/LetraT_necrose de coagulacao.jpg"),
  QuizModel(
      "A escolha do método deve considerar, além do tipo de tecido, de materiais biológicos presentes no leito da ferida e da quantidade de exsudato, a habilidade técnica do profissional. O tipo de desbridamento que estimula a ação de enzimas endógenas e atividade macrofágica, mantém o meio úmido, promovendo a quebra natural do tecido necrótico, é chamado de:",
      "Desbridamento mecânico",
      "Desbridamento enzimático",
      "Necrose de coagulação ou escara",
      "Desbridamento autolítico",
      "Desbridamento autolítico",
      ""),
  QuizModel("A colagenase promove desbridamento do tipo:", "Mecânico",
      "Enzimático", "Autolítico", "Biológico", "Enzimático", ""),
  QuizModel(
      "As espumas de poliuretano e hidrofibras promovem desbridamento do tipo:",
      "Mecânico",
      "Enzimático",
      "Autolítico",
      "Biológico",
      "Enzimático",
      ""),
];

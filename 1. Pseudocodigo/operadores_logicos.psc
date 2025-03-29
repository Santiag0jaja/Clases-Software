Algoritmo operadores_logicos
	Escribir "Probando operadores logicos";
	Escribir "------------------------------------------------------------";
	Escribir "Probando operador logico Y";
	Definir es_verdad, es_falso, resultado Como Logico;
	es_verdad <- Verdadero;
	es_falso <- Falso;
	resultado <- es_verdad Y es_verdad;
	Escribir "Verdad y verdad son: ", resultado;
	resultado <- es_verdad Y es_falso;
	Escribir "Verdadero y falso son: ", resultado;
	resultado <- es_falso Y es_verdad;
	Escribir "Falso y Verdadero son: ", resultado;
	Escribir "------------------------------------------------------------";
	Escribir "Usando operador logico O";
	resultado <- es_verdad O es_verdad;
	Escribir "Verdad o verdad son: ", resultado;
	resultado <- es_verdad O es_falso;
	Escribir "Verdadero o falso son: ", resultado;
	resultado <- es_falso O es_verdad;
	Escribir "Falso o Verdadero son: ", resultado;
	resultado <- es_falso O es_falso;
	Escribir "Falso o falso son: ", resultado; 
	Escribir "------------------------------------------------------------";
	Escribir "Usando operador logico N";
	resultado <- No(es_verdad);
	Escribir "No verdad es: ", resultado;
	resultado <- No(es_falso);
	Escribir "No falso es: ", resultado;
	
	
	
	
FinAlgoritmo

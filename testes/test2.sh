echo "Testando (35 comandos)..."
echo

output=$(./a.out < ./testes/input2.txt)
expected_output="Lista: 10.1 20.2 30.3 40.4 50.5
Posição do elemento 30.3: 3
Posição do elemento 60.6: -1
Lista: 10.1 15.5 20.2 30.3 40.4 50.5
Lista: 10.1 15.5 20.2 25.5 30.3 40.4 50.5
Lista: 10.1 15.5 20.2 25.5 30.3 35.5 40.4 50.5
Lista: 10.1 15.5 25.5 30.3 35.5 40.4 50.5
Lista: 10.1 15.5 25.5 30.3 40.4 50.5
Lista: 10.1 15.5 30.3 40.4 50.5
Lista: 10.1 15.5 30.3 40.4
Posição do elemento 10.1: 1
Posição do elemento 50.5: -1
Tamanho da lista: 4
Lista vazia
Lista: 5.5 10.1 12.2 13.3 15.5
Posição do elemento 5.5: 1
Posição do elemento 15.5: 5
Posição do elemento 10.1: 2
Posição do elemento 12.2: 3
Posição do elemento 13.3: 4
Lista: 5.5 12.2 13.3 15.5
Lista: 5.5 12.2 15.5
Lista: 5.5 15.5
Lista: 15.5
Posição do elemento 12.2: -1
Tamanho da lista: 1
Lista vazia
Lista: 99.9 77.7 66.6 55.5 88.8
Lista: 99.9 66.6 55.5 88.8
Lista: 99.9 55.5 88.8."


if [ $? -eq 0 ] ; then
  echo "Running ok: Program exited zero"
else
  echo "Fail on running: Program did not exit zero"
  exit 1
fi

if [ "$output" == "$expected_output" ] ; then
  echo "Pass: A saida esperada esta correta"
else
  echo "Era esperado '$expected_output' mas o programa retornou: $output"
  exit 1
fi

echo
echo "Teste 2 realizado com sucesso"

exit 0
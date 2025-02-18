echo "Testando (remocao de numeros repetidos)..."
echo

output=$(./a.out < ./testes/input4.txt)
expected_output="Lista: 5.5 10.1 5.5 20.2 5.5 30.3 5.5
Lista: 10.1 20.2 30.3
Lista: 10.1 40.4 20.2 50.5 30.3
Lista: 10.1 40.4 50.5 30.3
Lista: 10.1 40.4 50.5
Lista: 10.1 40.4 60.6 50.5
Lista: 40.4 60.6 50.5
Lista: 40.4 50.5
Lista: 40.4
Tamanho da lista: 1
Lista vazia."


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
echo "Teste 4 realizado com sucesso"

exit 0
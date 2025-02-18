echo "Testando (exemplo inicial)..."
echo

output=$(./a.out < ./testes/input1.txt)
expected_output="Lista: 1.1
Lista: 1.1 2.2
Lista: 1.1 3.3 2.2
Elemento 2.2 encontrado na posição 3.
Elemento 4.4 não encontrado.
Lista: 3.3 2.2
Lista: 3.3
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
echo "Teste 1 realizado com sucesso"

exit 0
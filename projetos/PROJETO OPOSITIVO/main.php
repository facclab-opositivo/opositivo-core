<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    echo "<h1>Respostas do Formulário</h1>";
    foreach ($_POST as $campo => $resposta) {
        $campo_formatado = ucfirst(str_replace("_", " ", $campo));
        echo "<p><strong>$campo_formatado:</strong> $resposta</p>";
    }
} else {
    echo "Formulário não enviado corretamente.";
}
?>

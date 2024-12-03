# Defina os comandos de compilação para DVI, PS e PDF
$latex = 'latex -interaction=nonstopmode -synctex=1';           # Compilar para .dvi
$dvips = 'dvips -Ppdf -t letter';                             # Converter .dvi para .ps
$ps2pdf = 'ps2pdf';                                           # Converter .ps para .pdf

# Defina o fluxo de compilação
$latex_silent = 1;                                             # Executar latex sem saída detalhada
$dvips_silent = 1;                                             # Executar dvips sem saída detalhada
$ps2pdf_silent = 1;                                            # Executar ps2pdf sem saída detalhada

# Habilitar a compilação em paralelo
$pdf_mode = 3;
$postscript_mode = 1;

# Defina o visualizador de PDF (opcional)
$pdf_previewer = 'evince';

# Limpeza dos arquivos intermediários gerados durante a compilação
$clean_ext = 'acn aux bbl blg idx ilg ind log out toc synctex.gz dvi ps';


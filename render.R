library(renderthis)

# Render slides 
parts <- c(
    'getting-started', 
    'conditional-control', 
    'data-handling', 
    'reactivity'
)
for (part in parts) {
    path_rmd <- file.path('parts', part, 'index.Rmd')
    path_html <- file.path('parts', part, 'index.html')
    path_pdf <- file.path('parts', part, paste0(part, '.pdf'))
    to_html(from = path_rmd, to = path_html)
    to_pdf(from = path_html, to = path_pdf)
    # Compress the PDF to reduce size
    tools::compactPDF(path_pdf, gs_quality = 'ebook')
}

# Render site
quarto::quarto_render()

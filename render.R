library(quarto)
library(renderthis)

# Render slides 
parts <- c('storytelling', 'visualizing-information')
for (part in parts) {
    path_rmd <- file.path('parts', part, 'index.Rmd')
    path_html <- file.path('parts', part, 'index.html')
    path_pdf <- file.path('parts', part, paste0(part, '.pdf'))
    to_html(from = path_rmd, to = path_html)
    to_pdf(from = path_html, to = path_pdf, partial_slides = TRUE)
    # Compress the PDF to reduce size
    tools::compactPDF(path_pdf, gs_quality = 'ebook')
}

# Render site
quarto_render()

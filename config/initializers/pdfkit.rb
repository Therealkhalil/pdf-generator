WickedPdf.config = {
  exe_path: ENV["WKHTMLTOPDF_PATH"] || "C:/Program Files/wkhtmltopdf/bin/wkhtmltopdf.exe" # Adjust path if necessary
}

Rails.application.config.middleware.use PDFKit::Middleware

variable "base_dir" {
  type        = string
  description = "The base directory in which this module will search for static files and templates."
}

variable "exclude" {
  type        = list(string)
  description = "Regular expression patterns to exclude file names."
  default     = []
}

variable "template_vars" {
  type        = any
  default     = {}
  description = "Variables to make available for interpolation and other expressions in template files."
}

variable "template_file_suffix" {
  type        = string
  default     = ".tmpl"
  description = "The filename suffix that indicates that a file is a Terraform template file rather than a static file."
}

variable "file_types" {
  type = map(string)
  default = {
    ".3g2"    = "video/3gpp2"
    ".3gp"    = "video/3gpp"
    ".atom"   = "application/atom+xml"
    ".avif"   = "image/avif"
    ".avifs"  = "image/avif-sequence"
    ".css"    = "text/css; charset=utf-8"
    ".eot"    = "application/vnd.ms-fontobject"
    ".gif"    = "image/gif"
    ".heic"   = "image/heic"
    ".heif"   = "image/heif"
    ".htm"    = "text/html; charset=utf-8"
    ".html"   = "text/html; charset=utf-8"
    ".ico"    = "image/x-icon"
    ".jar"    = "application/java-archive"
    ".jpeg"   = "image/jpeg"
    ".jpg"    = "image/jpeg"
    ".js"     = "text/javascript"
    ".json"   = "application/json"
    ".jsonld" = "application/ld+json"
    ".otf"    = "font/otf"
    ".pdf"    = "application/pdf"
    ".png"    = "image/png"
    ".rss"    = "application/rss+xml"
    ".svg"    = "image/svg"
    ".swf"    = "application/x-shockwave-flash"
    ".tif"    = "image/tiff"
    ".tiff"   = "image/tiff"
    ".ttc"    = "font/collection"
    ".ttf"    = "font/ttf"
    ".txt"    = "text/plain; charset=utf-8"
    ".weba"   = "audio/webm"
    ".webm"   = "video/webm"
    ".webp"   = "image/webp"
    ".woff"   = "font/woff"
    ".woff2"  = "font/woff2"
    ".xhtml"  = "application/xhtml+xml"
    ".xml"    = "application/xml"
  }
  description = "Map from file suffixes, which must begin with a period and contain no periods, to the corresponding Content-Type values."
}

variable "default_file_type" {
  type        = string
  default     = "application/octet-stream"
  description = "The Content-Type value to use for any files that don't match one of the suffixes given in file_types."
}

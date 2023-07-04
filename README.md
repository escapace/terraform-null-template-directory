<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0 |

## Providers

No providers.

## Modules

No modules.

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_base_dir"></a> [base\_dir](#input\_base\_dir) | The base directory in which this module will search for static files and templates. | `string` | n/a | yes |
| <a name="input_default_file_type"></a> [default\_file\_type](#input\_default\_file\_type) | The Content-Type value to use for any files that don't match one of the suffixes given in file\_types. | `string` | `"application/octet-stream"` | no |
| <a name="input_file_types"></a> [file\_types](#input\_file\_types) | Map from file suffixes, which must begin with a period and contain no periods, to the corresponding Content-Type values. | `map(string)` | <pre>{<br>  ".3g2": "video/3gpp2",<br>  ".3gp": "video/3gpp",<br>  ".atom": "application/atom+xml",<br>  ".avif": "image/avif",<br>  ".avifs": "image/avif-sequence",<br>  ".css": "text/css; charset=utf-8",<br>  ".eot": "application/vnd.ms-fontobject",<br>  ".gif": "image/gif",<br>  ".heic": "image/heic",<br>  ".heif": "image/heif",<br>  ".htm": "text/html; charset=utf-8",<br>  ".html": "text/html; charset=utf-8",<br>  ".ico": "image/vnd.microsoft.icon",<br>  ".jar": "application/java-archive",<br>  ".jpeg": "image/jpeg",<br>  ".jpg": "image/jpeg",<br>  ".js": "text/javascript",<br>  ".json": "application/json",<br>  ".jsonld": "application/ld+json",<br>  ".otf": "font/otf",<br>  ".pdf": "application/pdf",<br>  ".png": "image/png",<br>  ".rss": "application/rss+xml",<br>  ".svg": "image/svg",<br>  ".swf": "application/x-shockwave-flash",<br>  ".ttc": "font/collection",<br>  ".ttf": "font/ttf",<br>  ".txt": "text/plain; charset=utf-8",<br>  ".weba": "audio/webm",<br>  ".webm": "video/webm",<br>  ".webp": "image/webp",<br>  ".woff": "font/woff",<br>  ".woff2": "font/woff2",<br>  ".xhtml": "application/xhtml+xml",<br>  ".xml": "application/xml"<br>}</pre> | no |
| <a name="input_template_file_suffix"></a> [template\_file\_suffix](#input\_template\_file\_suffix) | The filename suffix that indicates that a file is a Terraform template file rather than a static file. | `string` | `".tmpl"` | no |
| <a name="input_template_vars"></a> [template\_vars](#input\_template\_vars) | Variables to make available for interpolation and other expressions in template files. | `any` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_files"></a> [files](#output\_files) | Map from relative file paths to objects describing all of the files. See the module README for more information. |
| <a name="output_files_in_memory"></a> [files\_in\_memory](#output\_files\_in\_memory) | A filtered version of the files output that includes only entries that have rendered content in memory. |
| <a name="output_files_on_disk"></a> [files\_on\_disk](#output\_files\_on\_disk) | A filtered version of the files output that includes only entries that point to static files on disk. |
<!-- END_TF_DOCS -->
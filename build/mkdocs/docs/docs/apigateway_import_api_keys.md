<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigateway_import_api_keys</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Import API keys from an external source, such as a CSV-formatted file

### Description

Import API keys from an external source, such as a CSV-formatted file.

### Usage

    apigateway_import_api_keys(body, format, failOnWarnings)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="apigateway_import_api_keys_:_body">body</code></td>
<td><p>[required] The payload of the POST request to import API keys.
For the payload format, see API Key File Format.</p></td>
</tr>
<tr class="even">
<td><code id="apigateway_import_api_keys_:_format">format</code></td>
<td><p>[required] A query parameter to specify the input format to
imported API keys. Currently, only the <code>csv</code> format is
supported.</p></td>
</tr>
<tr class="odd">
<td><code
id="apigateway_import_api_keys_:_failOnWarnings">failOnWarnings</code></td>
<td><p>A query parameter to indicate whether to rollback ApiKey
importation (<code>true</code>) or not (<code>false</code>) when error
is encountered.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ids = list(
        "string"
      ),
      warnings = list(
        "string"
      )
    )

### Request syntax

    svc$import_api_keys(
      body = raw,
      format = "csv",
      failOnWarnings = TRUE|FALSE
    )

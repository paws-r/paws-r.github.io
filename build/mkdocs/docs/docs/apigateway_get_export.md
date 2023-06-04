<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigateway_get_export</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Exports a deployed version of a RestApi in a specified format

### Description

Exports a deployed version of a RestApi in a specified format.

### Usage

    apigateway_get_export(restApiId, stageName, exportType, parameters,
      accepts)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="apigateway_get_export_:_restApiId">restApiId</code></td>
<td><p>[required] The string identifier of the associated
RestApi.</p></td>
</tr>
<tr class="even">
<td><code id="apigateway_get_export_:_stageName">stageName</code></td>
<td><p>[required] The name of the Stage that will be exported.</p></td>
</tr>
<tr class="odd">
<td><code id="apigateway_get_export_:_exportType">exportType</code></td>
<td><p>[required] The type of export. Acceptable values are 'oas30' for
OpenAPI 3.0.x and 'swagger' for Swagger/OpenAPI 2.0.</p></td>
</tr>
<tr class="even">
<td><code id="apigateway_get_export_:_parameters">parameters</code></td>
<td><p>A key-value map of query string parameters that specify
properties of the export, depending on the requested
<code>exportType</code>. For <code>exportType</code> <code>oas30</code>
and <code>swagger</code>, any combination of the following parameters
are supported: <code>extensions='integrations'</code> or
<code>extensions='apigateway'</code> will export the API with
x-amazon-apigateway-integration extensions.
<code>extensions='authorizers'</code> will export the API with
x-amazon-apigateway-authorizer extensions. <code>postman</code> will
export the API with Postman extensions, allowing for import to the
Postman tool</p></td>
</tr>
<tr class="odd">
<td><code id="apigateway_get_export_:_accepts">accepts</code></td>
<td><p>The content-type of the export, for example
<code>application/json</code>. Currently <code>application/json</code>
and <code>application/yaml</code> are supported for
<code>exportType</code> of<code>oas30</code> and <code>swagger</code>.
This should be specified in the <code>Accept</code> header for direct
API requests.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      contentType = "string",
      contentDisposition = "string",
      body = raw
    )

### Request syntax

    svc$get_export(
      restApiId = "string",
      stageName = "string",
      exportType = "string",
      parameters = list(
        "string"
      ),
      accepts = "string"
    )

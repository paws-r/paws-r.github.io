<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lambda_list_functions_by_code_signing_config</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## List the functions that use the specified code signing configuration

### Description

List the functions that use the specified code signing configuration.
You can use this method prior to deleting a code signing configuration,
to verify that no functions are using it.

### Usage

    lambda_list_functions_by_code_signing_config(CodeSigningConfigArn,
      Marker, MaxItems)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lambda_list_functions_by_code_signing_config_:_CodeSigningConfigArn">CodeSigningConfigArn</code></td>
<td><p>[required] The The Amazon Resource Name (ARN) of the code signing
configuration.</p></td>
</tr>
<tr class="even">
<td><code
id="lambda_list_functions_by_code_signing_config_:_Marker">Marker</code></td>
<td><p>Specify the pagination token that's returned by a previous
request to retrieve the next page of results.</p></td>
</tr>
<tr class="odd">
<td><code
id="lambda_list_functions_by_code_signing_config_:_MaxItems">MaxItems</code></td>
<td><p>Maximum number of items to return.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextMarker = "string",
      FunctionArns = list(
        "string"
      )
    )

### Request syntax

    svc$list_functions_by_code_signing_config(
      CodeSigningConfigArn = "string",
      Marker = "string",
      MaxItems = 123
    )

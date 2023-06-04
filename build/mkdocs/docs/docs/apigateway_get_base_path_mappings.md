<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigateway_get_base_path_mappings</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Represents a collection of BasePathMapping resources

### Description

Represents a collection of BasePathMapping resources.

### Usage

    apigateway_get_base_path_mappings(domainName, position, limit)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="apigateway_get_base_path_mappings_:_domainName">domainName</code></td>
<td><p>[required] The domain name of a BasePathMapping
resource.</p></td>
</tr>
<tr class="even">
<td><code
id="apigateway_get_base_path_mappings_:_position">position</code></td>
<td><p>The current pagination position in the paged result set.</p></td>
</tr>
<tr class="odd">
<td><code
id="apigateway_get_base_path_mappings_:_limit">limit</code></td>
<td><p>The maximum number of returned results per page. The default
value is 25 and the maximum value is 500.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      position = "string",
      items = list(
        list(
          basePath = "string",
          restApiId = "string",
          stage = "string"
        )
      )
    )

### Request syntax

    svc$get_base_path_mappings(
      domainName = "string",
      position = "string",
      limit = 123
    )

<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>schemas_search_schemas</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Search the schemas

### Description

Search the schemas

### Usage

    schemas_search_schemas(Keywords, Limit, NextToken, RegistryName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="schemas_search_schemas_:_Keywords">Keywords</code></td>
<td><p>[required] Specifying this limits the results to only schemas
that include the provided keywords.</p></td>
</tr>
<tr class="even">
<td><code id="schemas_search_schemas_:_Limit">Limit</code></td>
<td></td>
</tr>
<tr class="odd">
<td><code id="schemas_search_schemas_:_NextToken">NextToken</code></td>
<td><p>The token that specifies the next page of results to return. To
request the first page, leave NextToken empty. The token will expire in
24 hours, and cannot be shared with other accounts.</p></td>
</tr>
<tr class="even">
<td><code
id="schemas_search_schemas_:_RegistryName">RegistryName</code></td>
<td><p>[required] The name of the registry.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextToken = "string",
      Schemas = list(
        list(
          RegistryName = "string",
          SchemaArn = "string",
          SchemaName = "string",
          SchemaVersions = list(
            list(
              CreatedDate = as.POSIXct(
                "2015-01-01"
              ),
              SchemaVersion = "string",
              Type = "OpenApi3"|"JSONSchemaDraft4"
            )
          )
        )
      )
    )

### Request syntax

    svc$search_schemas(
      Keywords = "string",
      Limit = 123,
      NextToken = "string",
      RegistryName = "string"
    )

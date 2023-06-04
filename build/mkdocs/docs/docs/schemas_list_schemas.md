<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>schemas_list_schemas</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## List the schemas

### Description

List the schemas.

### Usage

    schemas_list_schemas(Limit, NextToken, RegistryName, SchemaNamePrefix)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="schemas_list_schemas_:_Limit">Limit</code></td>
<td></td>
</tr>
<tr class="even">
<td><code id="schemas_list_schemas_:_NextToken">NextToken</code></td>
<td><p>The token that specifies the next page of results to return. To
request the first page, leave NextToken empty. The token will expire in
24 hours, and cannot be shared with other accounts.</p></td>
</tr>
<tr class="odd">
<td><code
id="schemas_list_schemas_:_RegistryName">RegistryName</code></td>
<td><p>[required] The name of the registry.</p></td>
</tr>
<tr class="even">
<td><code
id="schemas_list_schemas_:_SchemaNamePrefix">SchemaNamePrefix</code></td>
<td><p>Specifying this limits the results to only those schema names
that start with the specified prefix.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextToken = "string",
      Schemas = list(
        list(
          LastModified = as.POSIXct(
            "2015-01-01"
          ),
          SchemaArn = "string",
          SchemaName = "string",
          Tags = list(
            "string"
          ),
          VersionCount = 123
        )
      )
    )

### Request syntax

    svc$list_schemas(
      Limit = 123,
      NextToken = "string",
      RegistryName = "string",
      SchemaNamePrefix = "string"
    )

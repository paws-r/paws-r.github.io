<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>schemas_list_schema_versions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Provides a list of the schema versions and related information

### Description

Provides a list of the schema versions and related information.

### Usage

    schemas_list_schema_versions(Limit, NextToken, RegistryName, SchemaName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="schemas_list_schema_versions_:_Limit">Limit</code></td>
<td></td>
</tr>
<tr class="even">
<td><code
id="schemas_list_schema_versions_:_NextToken">NextToken</code></td>
<td><p>The token that specifies the next page of results to return. To
request the first page, leave NextToken empty. The token will expire in
24 hours, and cannot be shared with other accounts.</p></td>
</tr>
<tr class="odd">
<td><code
id="schemas_list_schema_versions_:_RegistryName">RegistryName</code></td>
<td><p>[required] The name of the registry.</p></td>
</tr>
<tr class="even">
<td><code
id="schemas_list_schema_versions_:_SchemaName">SchemaName</code></td>
<td><p>[required] The name of the schema.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextToken = "string",
      SchemaVersions = list(
        list(
          SchemaArn = "string",
          SchemaName = "string",
          SchemaVersion = "string",
          Type = "OpenApi3"|"JSONSchemaDraft4"
        )
      )
    )

### Request syntax

    svc$list_schema_versions(
      Limit = 123,
      NextToken = "string",
      RegistryName = "string",
      SchemaName = "string"
    )

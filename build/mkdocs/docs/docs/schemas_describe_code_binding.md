<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>schemas_describe_code_binding</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describe the code binding URI

### Description

Describe the code binding URI.

### Usage

    schemas_describe_code_binding(Language, RegistryName, SchemaName,
      SchemaVersion)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="schemas_describe_code_binding_:_Language">Language</code></td>
<td><p>[required] The language of the code binding.</p></td>
</tr>
<tr class="even">
<td><code
id="schemas_describe_code_binding_:_RegistryName">RegistryName</code></td>
<td><p>[required] The name of the registry.</p></td>
</tr>
<tr class="odd">
<td><code
id="schemas_describe_code_binding_:_SchemaName">SchemaName</code></td>
<td><p>[required] The name of the schema.</p></td>
</tr>
<tr class="even">
<td><code
id="schemas_describe_code_binding_:_SchemaVersion">SchemaVersion</code></td>
<td><p>Specifying this limits the results to only this schema
version.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      CreationDate = as.POSIXct(
        "2015-01-01"
      ),
      LastModified = as.POSIXct(
        "2015-01-01"
      ),
      SchemaVersion = "string",
      Status = "CREATE_IN_PROGRESS"|"CREATE_COMPLETE"|"CREATE_FAILED"
    )

### Request syntax

    svc$describe_code_binding(
      Language = "string",
      RegistryName = "string",
      SchemaName = "string",
      SchemaVersion = "string"
    )

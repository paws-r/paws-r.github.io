<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>schemas_list_registries</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## List the registries

### Description

List the registries.

### Usage

    schemas_list_registries(Limit, NextToken, RegistryNamePrefix, Scope)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="schemas_list_registries_:_Limit">Limit</code></td>
<td></td>
</tr>
<tr class="even">
<td><code id="schemas_list_registries_:_NextToken">NextToken</code></td>
<td><p>The token that specifies the next page of results to return. To
request the first page, leave NextToken empty. The token will expire in
24 hours, and cannot be shared with other accounts.</p></td>
</tr>
<tr class="odd">
<td><code
id="schemas_list_registries_:_RegistryNamePrefix">RegistryNamePrefix</code></td>
<td><p>Specifying this limits the results to only those registry names
that start with the specified prefix.</p></td>
</tr>
<tr class="even">
<td><code id="schemas_list_registries_:_Scope">Scope</code></td>
<td><p>Can be set to Local or AWS to limit responses to your custom
registries, or the ones provided by AWS.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextToken = "string",
      Registries = list(
        list(
          RegistryArn = "string",
          RegistryName = "string",
          Tags = list(
            "string"
          )
        )
      )
    )

### Request syntax

    svc$list_registries(
      Limit = 123,
      NextToken = "string",
      RegistryNamePrefix = "string",
      Scope = "string"
    )

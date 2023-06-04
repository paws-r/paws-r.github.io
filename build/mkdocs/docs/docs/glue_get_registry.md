<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_get_registry</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the specified registry in detail

### Description

Describes the specified registry in detail.

### Usage

    glue_get_registry(RegistryId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="glue_get_registry_:_RegistryId">RegistryId</code></td>
<td><p>[required] This is a wrapper structure that may contain the
registry name and Amazon Resource Name (ARN).</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      RegistryName = "string",
      RegistryArn = "string",
      Description = "string",
      Status = "AVAILABLE"|"DELETING",
      CreatedTime = "string",
      UpdatedTime = "string"
    )

### Request syntax

    svc$get_registry(
      RegistryId = list(
        RegistryName = "string",
        RegistryArn = "string"
      )
    )

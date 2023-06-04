<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_delete_registry</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Delete the entire registry including schema and all of its versions

### Description

Delete the entire registry including schema and all of its versions. To
get the status of the delete operation, you can call the `get_registry`
API after the asynchronous call. Deleting a registry will deactivate all
online operations for the registry such as the `update_registry`,
`create_schema`, `update_schema`, and `register_schema_version` APIs.

### Usage

    glue_delete_registry(RegistryId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="glue_delete_registry_:_RegistryId">RegistryId</code></td>
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
      Status = "AVAILABLE"|"DELETING"
    )

### Request syntax

    svc$delete_registry(
      RegistryId = list(
        RegistryName = "string",
        RegistryArn = "string"
      )
    )

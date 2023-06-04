<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>opsworks_delete_layer</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a specified layer

### Description

Deletes a specified layer. You must first stop and then delete all
associated instances or unassign registered instances. For more
information, see [How to Delete a
Layer](https://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-basics-delete.html).

**Required Permissions**: To use this action, an IAM user must have a
Manage permissions level for the stack, or an attached policy that
explicitly grants permissions. For more information on user permissions,
see [Managing User
Permissions](https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).

### Usage

    opsworks_delete_layer(LayerId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="opsworks_delete_layer_:_LayerId">LayerId</code></td>
<td><p>[required] The layer ID.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_layer(
      LayerId = "string"
    )

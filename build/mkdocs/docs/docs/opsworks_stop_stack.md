<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>opsworks_stop_stack</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Stops a specified stack

### Description

Stops a specified stack.

**Required Permissions**: To use this action, an IAM user must have a
Manage permissions level for the stack, or an attached policy that
explicitly grants permissions. For more information on user permissions,
see [Managing User
Permissions](https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).

### Usage

    opsworks_stop_stack(StackId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="opsworks_stop_stack_:_StackId">StackId</code></td>
<td><p>[required] The stack ID.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$stop_stack(
      StackId = "string"
    )

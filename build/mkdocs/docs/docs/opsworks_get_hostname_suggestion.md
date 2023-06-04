<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>opsworks_get_hostname_suggestion</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets a generated host name for the specified layer, based on the current host name theme

### Description

Gets a generated host name for the specified layer, based on the current
host name theme.

**Required Permissions**: To use this action, an IAM user must have a
Manage permissions level for the stack, or an attached policy that
explicitly grants permissions. For more information on user permissions,
see [Managing User
Permissions](https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).

### Usage

    opsworks_get_hostname_suggestion(LayerId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="opsworks_get_hostname_suggestion_:_LayerId">LayerId</code></td>
<td><p>[required] The layer ID.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      LayerId = "string",
      Hostname = "string"
    )

### Request syntax

    svc$get_hostname_suggestion(
      LayerId = "string"
    )

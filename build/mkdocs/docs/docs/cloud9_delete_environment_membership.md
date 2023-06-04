<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloud9_delete_environment_membership</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an environment member from a development environment

### Description

Deletes an environment member from a development environment.

### Usage

    cloud9_delete_environment_membership(environmentId, userArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloud9_delete_environment_membership_:_environmentId">environmentId</code></td>
<td><p>[required] The ID of the environment to delete the environment
member from.</p></td>
</tr>
<tr class="even">
<td><code
id="cloud9_delete_environment_membership_:_userArn">userArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the environment
member to delete from the environment.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_environment_membership(
      environmentId = "string",
      userArn = "string"
    )

### Examples

    ## Not run: 
    # 
    svc$delete_environment_membership(
      environmentId = "8d9967e2f0624182b74e7690ad69ebEX",
      userArn = "arn:aws:iam::123456789012:user/AnotherDemoUser"
    )

    ## End(Not run)

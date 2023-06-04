<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloud9_create_environment_membership</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds an environment member to an Cloud9 development environment

### Description

Adds an environment member to an Cloud9 development environment.

### Usage

    cloud9_create_environment_membership(environmentId, userArn,
      permissions)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloud9_create_environment_membership_:_environmentId">environmentId</code></td>
<td><p>[required] The ID of the environment that contains the
environment member you want to add.</p></td>
</tr>
<tr class="even">
<td><code
id="cloud9_create_environment_membership_:_userArn">userArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the environment
member you want to add.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloud9_create_environment_membership_:_permissions">permissions</code></td>
<td><p>[required] The type of environment member permissions you want to
associate with this environment member. Available values include:</p>
<ul>
<li><p><code>read-only</code>: Has read-only access to the
environment.</p></li>
<li><p><code>read-write</code>: Has read-write access to the
environment.</p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      membership = list(
        permissions = "owner"|"read-write"|"read-only",
        userId = "string",
        userArn = "string",
        environmentId = "string",
        lastAccess = as.POSIXct(
          "2015-01-01"
        )
      )
    )

### Request syntax

    svc$create_environment_membership(
      environmentId = "string",
      userArn = "string",
      permissions = "read-write"|"read-only"
    )

### Examples

    ## Not run: 
    # 
    svc$create_environment_membership(
      environmentId = "8d9967e2f0624182b74e7690ad69ebEX",
      permissions = "read-write",
      userArn = "arn:aws:iam::123456789012:user/AnotherDemoUser"
    )

    ## End(Not run)

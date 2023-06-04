<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloud9_describe_environment_memberships</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets information about environment members for an Cloud9 development environment

### Description

Gets information about environment members for an Cloud9 development
environment.

### Usage

    cloud9_describe_environment_memberships(userArn, environmentId,
      permissions, nextToken, maxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloud9_describe_environment_memberships_:_userArn">userArn</code></td>
<td><p>The Amazon Resource Name (ARN) of an individual environment
member to get information about. If no value is specified, information
about all environment members are returned.</p></td>
</tr>
<tr class="even">
<td><code
id="cloud9_describe_environment_memberships_:_environmentId">environmentId</code></td>
<td><p>The ID of the environment to get environment member information
about.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloud9_describe_environment_memberships_:_permissions">permissions</code></td>
<td><p>The type of environment member permissions to get information
about. Available values include:</p>
<ul>
<li><p><code>owner</code>: Owns the environment.</p></li>
<li><p><code>read-only</code>: Has read-only access to the
environment.</p></li>
<li><p><code>read-write</code>: Has read-write access to the
environment.</p></li>
</ul>
<p>If no value is specified, information about all environment members
are returned.</p></td>
</tr>
<tr class="even">
<td><code
id="cloud9_describe_environment_memberships_:_nextToken">nextToken</code></td>
<td><p>During a previous call, if there are more than 25 items in the
list, only the first 25 items are returned, along with a unique string
called a <em>next token</em>. To get the next batch of items in the
list, call this operation again, adding the next token to the call. To
get all of the items in the list, keep calling this operation with each
subsequent next token that is returned, until no more next tokens are
returned.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloud9_describe_environment_memberships_:_maxResults">maxResults</code></td>
<td><p>The maximum number of environment members to get information
about.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      memberships = list(
        list(
          permissions = "owner"|"read-write"|"read-only",
          userId = "string",
          userArn = "string",
          environmentId = "string",
          lastAccess = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$describe_environment_memberships(
      userArn = "string",
      environmentId = "string",
      permissions = list(
        "owner"|"read-write"|"read-only"
      ),
      nextToken = "string",
      maxResults = 123
    )

### Examples

    ## Not run: 
    # The following example gets information about all of the environment
    # members for the specified development environment.
    svc$describe_environment_memberships(
      environmentId = "8d9967e2f0624182b74e7690ad69ebEX"
    )

    # The following example gets information about the owner of the specified
    # development environment.
    svc$describe_environment_memberships(
      environmentId = "8d9967e2f0624182b74e7690ad69ebEX",
      permissions = list(
        "owner"
      )
    )

    # The following example gets development environment membership
    # information for the specified user.
    svc$describe_environment_memberships(
      userArn = "arn:aws:iam::123456789012:user/MyDemoUser"
    )

    ## End(Not run)

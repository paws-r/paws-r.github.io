<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloud9_describe_environments</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets information about Cloud9 development environments

### Description

Gets information about Cloud9 development environments.

### Usage

    cloud9_describe_environments(environmentIds)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloud9_describe_environments_:_environmentIds">environmentIds</code></td>
<td><p>[required] The IDs of individual environments to get information
about.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      environments = list(
        list(
          id = "string",
          name = "string",
          description = "string",
          type = "ssh"|"ec2",
          connectionType = "CONNECT_SSH"|"CONNECT_SSM",
          arn = "string",
          ownerArn = "string",
          lifecycle = list(
            status = "CREATING"|"CREATED"|"CREATE_FAILED"|"DELETING"|"DELETE_FAILED",
            reason = "string",
            failureResource = "string"
          ),
          managedCredentialsStatus = "ENABLED_ON_CREATE"|"ENABLED_BY_OWNER"|"DISABLED_BY_DEFAULT"|"DISABLED_BY_OWNER"|"DISABLED_BY_COLLABORATOR"|"PENDING_REMOVAL_BY_COLLABORATOR"|"PENDING_START_REMOVAL_BY_COLLABORATOR"|"PENDING_REMOVAL_BY_OWNER"|"PENDING_START_REMOVAL_BY_OWNER"|"FAILED_REMOVAL_BY_COLLABORATOR"|"FAILED_REMOVAL_BY_OWNER"
        )
      )
    )

### Request syntax

    svc$describe_environments(
      environmentIds = list(
        "string"
      )
    )

### Examples

    ## Not run: 
    # 
    svc$describe_environments(
      environmentIds = list(
        "8d9967e2f0624182b74e7690ad69ebEX",
        "349c86d4579e4e7298d500ff57a6b2EX"
      )
    )

    ## End(Not run)

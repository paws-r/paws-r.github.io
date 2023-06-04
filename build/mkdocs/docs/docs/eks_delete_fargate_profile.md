<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>eks_delete_fargate_profile</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an Fargate profile

### Description

Deletes an Fargate profile.

When you delete a Fargate profile, any pods running on Fargate that were
created with the profile are deleted. If those pods match another
Fargate profile, then they are scheduled on Fargate with that profile.
If they no longer match any Fargate profiles, then they are not
scheduled on Fargate and they may remain in a pending state.

Only one Fargate profile in a cluster can be in the `DELETING` status at
a time. You must wait for a Fargate profile to finish deleting before
you can delete any other profiles in that cluster.

### Usage

    eks_delete_fargate_profile(clusterName, fargateProfileName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="eks_delete_fargate_profile_:_clusterName">clusterName</code></td>
<td><p>[required] The name of the Amazon EKS cluster associated with the
Fargate profile to delete.</p></td>
</tr>
<tr class="even">
<td><code
id="eks_delete_fargate_profile_:_fargateProfileName">fargateProfileName</code></td>
<td><p>[required] The name of the Fargate profile to delete.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      fargateProfile = list(
        fargateProfileName = "string",
        fargateProfileArn = "string",
        clusterName = "string",
        createdAt = as.POSIXct(
          "2015-01-01"
        ),
        podExecutionRoleArn = "string",
        subnets = list(
          "string"
        ),
        selectors = list(
          list(
            namespace = "string",
            labels = list(
              "string"
            )
          )
        ),
        status = "CREATING"|"ACTIVE"|"DELETING"|"CREATE_FAILED"|"DELETE_FAILED",
        tags = list(
          "string"
        )
      )
    )

### Request syntax

    svc$delete_fargate_profile(
      clusterName = "string",
      fargateProfileName = "string"
    )

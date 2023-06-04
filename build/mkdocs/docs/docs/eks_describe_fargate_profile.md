<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>eks_describe_fargate_profile</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns descriptive information about an Fargate profile

### Description

Returns descriptive information about an Fargate profile.

### Usage

    eks_describe_fargate_profile(clusterName, fargateProfileName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="eks_describe_fargate_profile_:_clusterName">clusterName</code></td>
<td><p>[required] The name of the Amazon EKS cluster associated with the
Fargate profile.</p></td>
</tr>
<tr class="even">
<td><code
id="eks_describe_fargate_profile_:_fargateProfileName">fargateProfileName</code></td>
<td><p>[required] The name of the Fargate profile to describe.</p></td>
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

    svc$describe_fargate_profile(
      clusterName = "string",
      fargateProfileName = "string"
    )

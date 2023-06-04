<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_describe_lineage_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Provides a list of properties for the requested lineage group

### Description

Provides a list of properties for the requested lineage group. For more
information, see [Cross-Account Lineage
Tracking](https://docs.aws.amazon.com/sagemaker/latest/dg/xaccount-lineage-tracking.html)
in the *Amazon SageMaker Developer Guide*.

### Usage

    sagemaker_describe_lineage_group(LineageGroupName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_describe_lineage_group_:_LineageGroupName">LineageGroupName</code></td>
<td><p>[required] The name of the lineage group.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      LineageGroupName = "string",
      LineageGroupArn = "string",
      DisplayName = "string",
      Description = "string",
      CreationTime = as.POSIXct(
        "2015-01-01"
      ),
      CreatedBy = list(
        UserProfileArn = "string",
        UserProfileName = "string",
        DomainId = "string",
        IamIdentity = list(
          Arn = "string",
          PrincipalId = "string",
          SourceIdentity = "string"
        )
      ),
      LastModifiedTime = as.POSIXct(
        "2015-01-01"
      ),
      LastModifiedBy = list(
        UserProfileArn = "string",
        UserProfileName = "string",
        DomainId = "string",
        IamIdentity = list(
          Arn = "string",
          PrincipalId = "string",
          SourceIdentity = "string"
        )
      )
    )

### Request syntax

    svc$describe_lineage_group(
      LineageGroupName = "string"
    )

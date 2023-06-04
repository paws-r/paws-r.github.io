<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_describe_model_package_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets a description for the specified model group

### Description

Gets a description for the specified model group.

### Usage

    sagemaker_describe_model_package_group(ModelPackageGroupName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_describe_model_package_group_:_ModelPackageGroupName">ModelPackageGroupName</code></td>
<td><p>[required] The name of gthe model group to describe.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ModelPackageGroupName = "string",
      ModelPackageGroupArn = "string",
      ModelPackageGroupDescription = "string",
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
      ModelPackageGroupStatus = "Pending"|"InProgress"|"Completed"|"Failed"|"Deleting"|"DeleteFailed"
    )

### Request syntax

    svc$describe_model_package_group(
      ModelPackageGroupName = "string"
    )

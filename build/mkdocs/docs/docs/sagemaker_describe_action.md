<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_describe_action</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes an action

### Description

Describes an action.

### Usage

    sagemaker_describe_action(ActionName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_describe_action_:_ActionName">ActionName</code></td>
<td><p>[required] The name of the action to describe.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ActionName = "string",
      ActionArn = "string",
      Source = list(
        SourceUri = "string",
        SourceType = "string",
        SourceId = "string"
      ),
      ActionType = "string",
      Description = "string",
      Status = "Unknown"|"InProgress"|"Completed"|"Failed"|"Stopping"|"Stopped",
      Properties = list(
        "string"
      ),
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
      ),
      MetadataProperties = list(
        CommitId = "string",
        Repository = "string",
        GeneratedBy = "string",
        ProjectId = "string"
      ),
      LineageGroupArn = "string"
    )

### Request syntax

    svc$describe_action(
      ActionName = "string"
    )

<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_describe_trial</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Provides a list of a trial's properties

### Description

Provides a list of a trial's properties.

### Usage

    sagemaker_describe_trial(TrialName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_describe_trial_:_TrialName">TrialName</code></td>
<td><p>[required] The name of the trial to describe.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TrialName = "string",
      TrialArn = "string",
      DisplayName = "string",
      ExperimentName = "string",
      Source = list(
        SourceArn = "string",
        SourceType = "string"
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
      )
    )

### Request syntax

    svc$describe_trial(
      TrialName = "string"
    )

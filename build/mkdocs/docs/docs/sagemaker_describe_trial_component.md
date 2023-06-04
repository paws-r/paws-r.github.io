<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_describe_trial_component</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Provides a list of a trials component's properties

### Description

Provides a list of a trials component's properties.

### Usage

    sagemaker_describe_trial_component(TrialComponentName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_describe_trial_component_:_TrialComponentName">TrialComponentName</code></td>
<td><p>[required] The name of the trial component to describe.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TrialComponentName = "string",
      TrialComponentArn = "string",
      DisplayName = "string",
      Source = list(
        SourceArn = "string",
        SourceType = "string"
      ),
      Status = list(
        PrimaryStatus = "InProgress"|"Completed"|"Failed"|"Stopping"|"Stopped",
        Message = "string"
      ),
      StartTime = as.POSIXct(
        "2015-01-01"
      ),
      EndTime = as.POSIXct(
        "2015-01-01"
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
      Parameters = list(
        list(
          StringValue = "string",
          NumberValue = 123.0
        )
      ),
      InputArtifacts = list(
        list(
          MediaType = "string",
          Value = "string"
        )
      ),
      OutputArtifacts = list(
        list(
          MediaType = "string",
          Value = "string"
        )
      ),
      MetadataProperties = list(
        CommitId = "string",
        Repository = "string",
        GeneratedBy = "string",
        ProjectId = "string"
      ),
      Metrics = list(
        list(
          MetricName = "string",
          SourceArn = "string",
          TimeStamp = as.POSIXct(
            "2015-01-01"
          ),
          Max = 123.0,
          Min = 123.0,
          Last = 123.0,
          Count = 123,
          Avg = 123.0,
          StdDev = 123.0
        )
      ),
      LineageGroupArn = "string",
      Sources = list(
        list(
          SourceArn = "string",
          SourceType = "string"
        )
      )
    )

### Request syntax

    svc$describe_trial_component(
      TrialComponentName = "string"
    )

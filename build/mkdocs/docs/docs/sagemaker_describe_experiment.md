<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_describe_experiment</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Provides a list of an experiment's properties

### Description

Provides a list of an experiment's properties.

### Usage

    sagemaker_describe_experiment(ExperimentName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_describe_experiment_:_ExperimentName">ExperimentName</code></td>
<td><p>[required] The name of the experiment to describe.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ExperimentName = "string",
      ExperimentArn = "string",
      DisplayName = "string",
      Source = list(
        SourceArn = "string",
        SourceType = "string"
      ),
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

    svc$describe_experiment(
      ExperimentName = "string"
    )

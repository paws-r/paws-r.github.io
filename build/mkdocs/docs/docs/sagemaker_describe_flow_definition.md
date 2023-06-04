<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_describe_flow_definition</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about the specified flow definition

### Description

Returns information about the specified flow definition.

### Usage

    sagemaker_describe_flow_definition(FlowDefinitionName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_describe_flow_definition_:_FlowDefinitionName">FlowDefinitionName</code></td>
<td><p>[required] The name of the flow definition.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      FlowDefinitionArn = "string",
      FlowDefinitionName = "string",
      FlowDefinitionStatus = "Initializing"|"Active"|"Failed"|"Deleting",
      CreationTime = as.POSIXct(
        "2015-01-01"
      ),
      HumanLoopRequestSource = list(
        AwsManagedHumanLoopRequestSource = "AWS/Rekognition/DetectModerationLabels/Image/V3"|"AWS/Textract/AnalyzeDocument/Forms/V1"
      ),
      HumanLoopActivationConfig = list(
        HumanLoopActivationConditionsConfig = list(
          HumanLoopActivationConditions = "string"
        )
      ),
      HumanLoopConfig = list(
        WorkteamArn = "string",
        HumanTaskUiArn = "string",
        TaskTitle = "string",
        TaskDescription = "string",
        TaskCount = 123,
        TaskAvailabilityLifetimeInSeconds = 123,
        TaskTimeLimitInSeconds = 123,
        TaskKeywords = list(
          "string"
        ),
        PublicWorkforceTaskPrice = list(
          AmountInUsd = list(
            Dollars = 123,
            Cents = 123,
            TenthFractionsOfACent = 123
          )
        )
      ),
      OutputConfig = list(
        S3OutputPath = "string",
        KmsKeyId = "string"
      ),
      RoleArn = "string",
      FailureReason = "string"
    )

### Request syntax

    svc$describe_flow_definition(
      FlowDefinitionName = "string"
    )

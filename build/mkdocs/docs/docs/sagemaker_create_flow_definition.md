<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_create_flow_definition</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a flow definition

### Description

Creates a flow definition.

### Usage

    sagemaker_create_flow_definition(FlowDefinitionName,
      HumanLoopRequestSource, HumanLoopActivationConfig, HumanLoopConfig,
      OutputConfig, RoleArn, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_create_flow_definition_:_FlowDefinitionName">FlowDefinitionName</code></td>
<td><p>[required] The name of your flow definition.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_create_flow_definition_:_HumanLoopRequestSource">HumanLoopRequestSource</code></td>
<td><p>Container for configuring the source of human task requests. Use
to specify if Amazon Rekognition or Amazon Textract is used as an
integration source.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_create_flow_definition_:_HumanLoopActivationConfig">HumanLoopActivationConfig</code></td>
<td><p>An object containing information about the events that trigger a
human workflow.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_create_flow_definition_:_HumanLoopConfig">HumanLoopConfig</code></td>
<td><p>[required] An object containing information about the tasks the
human reviewers will perform.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_create_flow_definition_:_OutputConfig">OutputConfig</code></td>
<td><p>[required] An object containing information about where the human
review results will be uploaded.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_create_flow_definition_:_RoleArn">RoleArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the role needed to
call other services on your behalf. For example, <code
style="white-space: pre;">⁠arn:aws:iam::1234567890:role/service-role/AmazonSageMaker-ExecutionRole-20180111T151298⁠</code>.</p></td>
</tr>
<tr class="odd">
<td><code id="sagemaker_create_flow_definition_:_Tags">Tags</code></td>
<td><p>An array of key-value pairs that contain metadata to help you
categorize and organize a flow definition. Each tag consists of a key
and a value, both of which you define.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      FlowDefinitionArn = "string"
    )

### Request syntax

    svc$create_flow_definition(
      FlowDefinitionName = "string",
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
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )

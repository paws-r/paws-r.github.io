<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>frauddetector_put_external_model</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates or updates an Amazon SageMaker model endpoint

### Description

Creates or updates an Amazon SageMaker model endpoint. You can also use
this action to update the configuration of the model endpoint, including
the IAM role and/or the mapped variables.

### Usage

    frauddetector_put_external_model(modelEndpoint, modelSource,
      invokeModelEndpointRoleArn, inputConfiguration, outputConfiguration,
      modelEndpointStatus, tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="frauddetector_put_external_model_:_modelEndpoint">modelEndpoint</code></td>
<td><p>[required] The model endpoints name.</p></td>
</tr>
<tr class="even">
<td><code
id="frauddetector_put_external_model_:_modelSource">modelSource</code></td>
<td><p>[required] The source of the model.</p></td>
</tr>
<tr class="odd">
<td><code
id="frauddetector_put_external_model_:_invokeModelEndpointRoleArn">invokeModelEndpointRoleArn</code></td>
<td><p>[required] The IAM role used to invoke the model
endpoint.</p></td>
</tr>
<tr class="even">
<td><code
id="frauddetector_put_external_model_:_inputConfiguration">inputConfiguration</code></td>
<td><p>[required] The model endpoint input configuration.</p></td>
</tr>
<tr class="odd">
<td><code
id="frauddetector_put_external_model_:_outputConfiguration">outputConfiguration</code></td>
<td><p>[required] The model endpoint output configuration.</p></td>
</tr>
<tr class="even">
<td><code
id="frauddetector_put_external_model_:_modelEndpointStatus">modelEndpointStatus</code></td>
<td><p>[required] The model endpoint’s status in Amazon Fraud
Detector.</p></td>
</tr>
<tr class="odd">
<td><code id="frauddetector_put_external_model_:_tags">tags</code></td>
<td><p>A collection of key and value pairs.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$put_external_model(
      modelEndpoint = "string",
      modelSource = "SAGEMAKER",
      invokeModelEndpointRoleArn = "string",
      inputConfiguration = list(
        eventTypeName = "string",
        format = "TEXT_CSV"|"APPLICATION_JSON",
        useEventVariables = TRUE|FALSE,
        jsonInputTemplate = "string",
        csvInputTemplate = "string"
      ),
      outputConfiguration = list(
        format = "TEXT_CSV"|"APPLICATION_JSONLINES",
        jsonKeyToVariableMap = list(
          "string"
        ),
        csvIndexToVariableMap = list(
          "string"
        )
      ),
      modelEndpointStatus = "ASSOCIATED"|"DISSOCIATED",
      tags = list(
        list(
          key = "string",
          value = "string"
        )
      )
    )

<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_update_endpoint_weights_and_capacities</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates variant weight of one or more variants associated with an existing endpoint, or capacity of one variant associated with an existing endpoint

### Description

Updates variant weight of one or more variants associated with an
existing endpoint, or capacity of one variant associated with an
existing endpoint. When it receives the request, SageMaker sets the
endpoint status to `Updating`. After updating the endpoint, it sets the
status to `InService`. To check the status of an endpoint, use the
`describe_endpoint` API.

### Usage

    sagemaker_update_endpoint_weights_and_capacities(EndpointName,
      DesiredWeightsAndCapacities)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_update_endpoint_weights_and_capacities_:_EndpointName">EndpointName</code></td>
<td><p>[required] The name of an existing SageMaker endpoint.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_update_endpoint_weights_and_capacities_:_DesiredWeightsAndCapacities">DesiredWeightsAndCapacities</code></td>
<td><p>[required] An object that provides new capacity and weight values
for a variant.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      EndpointArn = "string"
    )

### Request syntax

    svc$update_endpoint_weights_and_capacities(
      EndpointName = "string",
      DesiredWeightsAndCapacities = list(
        list(
          VariantName = "string",
          DesiredWeight = 123.0,
          DesiredInstanceCount = 123,
          ServerlessUpdateConfig = list(
            MaxConcurrency = 123,
            ProvisionedConcurrency = 123
          )
        )
      )
    )

<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>comprehend_update_endpoint</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates information about the specified endpoint

### Description

Updates information about the specified endpoint. For information about
endpoints, see [Managing
endpoints](https://docs.aws.amazon.com/comprehend/latest/dg/manage-endpoints.html).

### Usage

    comprehend_update_endpoint(EndpointArn, DesiredModelArn,
      DesiredInferenceUnits, DesiredDataAccessRoleArn, FlywheelArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="comprehend_update_endpoint_:_EndpointArn">EndpointArn</code></td>
<td><p>[required] The Amazon Resource Number (ARN) of the endpoint being
updated.</p></td>
</tr>
<tr class="even">
<td><code
id="comprehend_update_endpoint_:_DesiredModelArn">DesiredModelArn</code></td>
<td><p>The ARN of the new model to use when updating an existing
endpoint.</p></td>
</tr>
<tr class="odd">
<td><code
id="comprehend_update_endpoint_:_DesiredInferenceUnits">DesiredInferenceUnits</code></td>
<td><p>The desired number of inference units to be used by the model
using this endpoint. Each inference unit represents of a throughput of
100 characters per second.</p></td>
</tr>
<tr class="even">
<td><code
id="comprehend_update_endpoint_:_DesiredDataAccessRoleArn">DesiredDataAccessRoleArn</code></td>
<td><p>Data access role ARN to use in case the new model is encrypted
with a customer CMK.</p></td>
</tr>
<tr class="odd">
<td><code
id="comprehend_update_endpoint_:_FlywheelArn">FlywheelArn</code></td>
<td><p>The Amazon Resource Number (ARN) of the flywheel</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DesiredModelArn = "string"
    )

### Request syntax

    svc$update_endpoint(
      EndpointArn = "string",
      DesiredModelArn = "string",
      DesiredInferenceUnits = 123,
      DesiredDataAccessRoleArn = "string",
      FlywheelArn = "string"
    )

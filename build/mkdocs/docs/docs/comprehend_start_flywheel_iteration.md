<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>comprehend_start_flywheel_iteration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Start the flywheel iteration

### Description

Start the flywheel iteration.This operation uses any new datasets to
train a new model version. For more information about flywheels, see
[Flywheel
overview](https://docs.aws.amazon.com/comprehend/latest/dg/flywheels-about.html)
in the *Amazon Comprehend Developer Guide*.

### Usage

    comprehend_start_flywheel_iteration(FlywheelArn, ClientRequestToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="comprehend_start_flywheel_iteration_:_FlywheelArn">FlywheelArn</code></td>
<td><p>[required] The ARN of the flywheel.</p></td>
</tr>
<tr class="even">
<td><code
id="comprehend_start_flywheel_iteration_:_ClientRequestToken">ClientRequestToken</code></td>
<td><p>A unique identifier for the request. If you don't set the client
request token, Amazon Comprehend generates one.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      FlywheelArn = "string",
      FlywheelIterationId = "string"
    )

### Request syntax

    svc$start_flywheel_iteration(
      FlywheelArn = "string",
      ClientRequestToken = "string"
    )

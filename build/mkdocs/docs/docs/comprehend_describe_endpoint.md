<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>comprehend_describe_endpoint</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets the properties associated with a specific endpoint

### Description

Gets the properties associated with a specific endpoint. Use this
operation to get the status of an endpoint. For information about
endpoints, see [Managing
endpoints](https://docs.aws.amazon.com/comprehend/latest/dg/manage-endpoints.html).

### Usage

    comprehend_describe_endpoint(EndpointArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="comprehend_describe_endpoint_:_EndpointArn">EndpointArn</code></td>
<td><p>[required] The Amazon Resource Number (ARN) of the endpoint being
described.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      EndpointProperties = list(
        EndpointArn = "string",
        Status = "CREATING"|"DELETING"|"FAILED"|"IN_SERVICE"|"UPDATING",
        Message = "string",
        ModelArn = "string",
        DesiredModelArn = "string",
        DesiredInferenceUnits = 123,
        CurrentInferenceUnits = 123,
        CreationTime = as.POSIXct(
          "2015-01-01"
        ),
        LastModifiedTime = as.POSIXct(
          "2015-01-01"
        ),
        DataAccessRoleArn = "string",
        DesiredDataAccessRoleArn = "string",
        FlywheelArn = "string"
      )
    )

### Request syntax

    svc$describe_endpoint(
      EndpointArn = "string"
    )

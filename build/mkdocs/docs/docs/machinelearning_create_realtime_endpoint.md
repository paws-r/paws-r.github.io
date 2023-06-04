<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>machinelearning_create_realtime_endpoint</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a real-time endpoint for the MLModel

### Description

Creates a real-time endpoint for the `MLModel`. The endpoint contains
the URI of the `MLModel`; that is, the location to send real-time
prediction requests for the specified `MLModel`.

### Usage

    machinelearning_create_realtime_endpoint(MLModelId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="machinelearning_create_realtime_endpoint_:_MLModelId">MLModelId</code></td>
<td><p>[required] The ID assigned to the <code>MLModel</code> during
creation.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      MLModelId = "string",
      RealtimeEndpointInfo = list(
        PeakRequestsPerSecond = 123,
        CreatedAt = as.POSIXct(
          "2015-01-01"
        ),
        EndpointUrl = "string",
        EndpointStatus = "NONE"|"READY"|"UPDATING"|"FAILED"
      )
    )

### Request syntax

    svc$create_realtime_endpoint(
      MLModelId = "string"
    )

<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>machinelearning_delete_realtime_endpoint</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a real time endpoint of an MLModel

### Description

Deletes a real time endpoint of an `MLModel`.

### Usage

    machinelearning_delete_realtime_endpoint(MLModelId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="machinelearning_delete_realtime_endpoint_:_MLModelId">MLModelId</code></td>
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

    svc$delete_realtime_endpoint(
      MLModelId = "string"
    )

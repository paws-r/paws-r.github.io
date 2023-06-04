<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>storagegateway_describe_tape_recovery_points</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of virtual tape recovery points that are available for the specified tape gateway

### Description

Returns a list of virtual tape recovery points that are available for
the specified tape gateway.

A recovery point is a point-in-time view of a virtual tape at which all
the data on the virtual tape is consistent. If your gateway crashes,
virtual tapes that have recovery points can be recovered to a new
gateway. This operation is only supported in the tape gateway type.

### Usage

    storagegateway_describe_tape_recovery_points(GatewayARN, Marker, Limit)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="storagegateway_describe_tape_recovery_points_:_GatewayARN">GatewayARN</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="even">
<td><code
id="storagegateway_describe_tape_recovery_points_:_Marker">Marker</code></td>
<td><p>An opaque string that indicates the position at which to begin
describing the virtual tape recovery points.</p></td>
</tr>
<tr class="odd">
<td><code
id="storagegateway_describe_tape_recovery_points_:_Limit">Limit</code></td>
<td><p>Specifies that the number of virtual tape recovery points that
are described be limited to the specified number.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      GatewayARN = "string",
      TapeRecoveryPointInfos = list(
        list(
          TapeARN = "string",
          TapeRecoveryPointTime = as.POSIXct(
            "2015-01-01"
          ),
          TapeSizeInBytes = 123,
          TapeStatus = "string"
        )
      ),
      Marker = "string"
    )

### Request syntax

    svc$describe_tape_recovery_points(
      GatewayARN = "string",
      Marker = "string",
      Limit = 123
    )

### Examples

    ## Not run: 
    # Returns a list of virtual tape recovery points that are available for
    # the specified gateway-VTL.
    svc$describe_tape_recovery_points(
      GatewayARN = "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B",
      Limit = 1L,
      Marker = "1"
    )

    ## End(Not run)

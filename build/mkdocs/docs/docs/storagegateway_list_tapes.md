<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>storagegateway_list_tapes</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists virtual tapes in your virtual tape library (VTL) and your virtual tape shelf (VTS)

### Description

Lists virtual tapes in your virtual tape library (VTL) and your virtual
tape shelf (VTS). You specify the tapes to list by specifying one or
more tape Amazon Resource Names (ARNs). If you don't specify a tape ARN,
the operation lists all virtual tapes in both your VTL and VTS.

This operation supports pagination. By default, the operation returns a
maximum of up to 100 tapes. You can optionally specify the `Limit`
parameter in the body to limit the number of tapes in the response. If
the number of tapes returned in the response is truncated, the response
includes a `Marker` element that you can use in your subsequent request
to retrieve the next set of tapes. This operation is only supported in
the tape gateway type.

### Usage

    storagegateway_list_tapes(TapeARNs, Marker, Limit)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="storagegateway_list_tapes_:_TapeARNs">TapeARNs</code></td>
<td></td>
</tr>
<tr class="even">
<td><code id="storagegateway_list_tapes_:_Marker">Marker</code></td>
<td><p>A string that indicates the position at which to begin the
returned list of tapes.</p></td>
</tr>
<tr class="odd">
<td><code id="storagegateway_list_tapes_:_Limit">Limit</code></td>
<td><p>An optional number limit for the tapes in the list returned by
this call.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TapeInfos = list(
        list(
          TapeARN = "string",
          TapeBarcode = "string",
          TapeSizeInBytes = 123,
          TapeStatus = "string",
          GatewayARN = "string",
          PoolId = "string",
          RetentionStartDate = as.POSIXct(
            "2015-01-01"
          ),
          PoolEntryDate = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      Marker = "string"
    )

### Request syntax

    svc$list_tapes(
      TapeARNs = list(
        "string"
      ),
      Marker = "string",
      Limit = 123
    )

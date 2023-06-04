<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>storagegateway_describe_tapes</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a description of the specified Amazon Resource Name (ARN) of virtual tapes

### Description

Returns a description of the specified Amazon Resource Name (ARN) of
virtual tapes. If a `TapeARN` is not specified, returns a description of
all virtual tapes associated with the specified gateway. This operation
is only supported in the tape gateway type.

### Usage

    storagegateway_describe_tapes(GatewayARN, TapeARNs, Marker, Limit)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="storagegateway_describe_tapes_:_GatewayARN">GatewayARN</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="even">
<td><code
id="storagegateway_describe_tapes_:_TapeARNs">TapeARNs</code></td>
<td><p>Specifies one or more unique Amazon Resource Names (ARNs) that
represent the virtual tapes you want to describe. If this parameter is
not specified, Tape gateway returns a description of all virtual tapes
associated with the specified gateway.</p></td>
</tr>
<tr class="odd">
<td><code id="storagegateway_describe_tapes_:_Marker">Marker</code></td>
<td><p>A marker value, obtained in a previous call to
<code>describe_tapes</code>. This marker indicates which page of results
to retrieve.</p>
<p>If not specified, the first page of results is retrieved.</p></td>
</tr>
<tr class="even">
<td><code id="storagegateway_describe_tapes_:_Limit">Limit</code></td>
<td><p>Specifies that the number of virtual tapes described be limited
to the specified number.</p>
<p>Amazon Web Services may impose its own limit, if this field is not
set.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Tapes = list(
        list(
          TapeARN = "string",
          TapeBarcode = "string",
          TapeCreatedDate = as.POSIXct(
            "2015-01-01"
          ),
          TapeSizeInBytes = 123,
          TapeStatus = "string",
          VTLDevice = "string",
          Progress = 123.0,
          TapeUsedInBytes = 123,
          KMSKey = "string",
          PoolId = "string",
          Worm = TRUE|FALSE,
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

    svc$describe_tapes(
      GatewayARN = "string",
      TapeARNs = list(
        "string"
      ),
      Marker = "string",
      Limit = 123
    )

### Examples

    ## Not run: 
    # Returns a description of the specified Amazon Resource Name (ARN) of
    # virtual tapes. If a TapeARN is not specified, returns a description of
    # all virtual tapes.
    svc$describe_tapes(
      GatewayARN = "arn:aws:storagegateway:us-east-1:999999999999:gateway/sgw-12A3456B",
      Limit = 2L,
      Marker = "1",
      TapeARNs = list(
        "arn:aws:storagegateway:us-east-1:999999999999:tape/TEST04A2A1",
        "arn:aws:storagegateway:us-east-1:999999999999:tape/TEST05A2A0"
      )
    )

    ## End(Not run)

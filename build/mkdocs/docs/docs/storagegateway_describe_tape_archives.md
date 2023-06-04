<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>storagegateway_describe_tape_archives</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a description of specified virtual tapes in the virtual tape shelf (VTS)

### Description

Returns a description of specified virtual tapes in the virtual tape
shelf (VTS). This operation is only supported in the tape gateway type.

If a specific `TapeARN` is not specified, Storage Gateway returns a
description of all virtual tapes found in the VTS associated with your
account.

### Usage

    storagegateway_describe_tape_archives(TapeARNs, Marker, Limit)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="storagegateway_describe_tape_archives_:_TapeARNs">TapeARNs</code></td>
<td><p>Specifies one or more unique Amazon Resource Names (ARNs) that
represent the virtual tapes you want to describe.</p></td>
</tr>
<tr class="even">
<td><code
id="storagegateway_describe_tape_archives_:_Marker">Marker</code></td>
<td><p>An opaque string that indicates the position at which to begin
describing virtual tapes.</p></td>
</tr>
<tr class="odd">
<td><code
id="storagegateway_describe_tape_archives_:_Limit">Limit</code></td>
<td><p>Specifies that the number of virtual tapes described be limited
to the specified number.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TapeArchives = list(
        list(
          TapeARN = "string",
          TapeBarcode = "string",
          TapeCreatedDate = as.POSIXct(
            "2015-01-01"
          ),
          TapeSizeInBytes = 123,
          CompletionTime = as.POSIXct(
            "2015-01-01"
          ),
          RetrievedTo = "string",
          TapeStatus = "string",
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

    svc$describe_tape_archives(
      TapeARNs = list(
        "string"
      ),
      Marker = "string",
      Limit = 123
    )

### Examples

    ## Not run: 
    # Returns a description of specified virtual tapes in the virtual tape
    # shelf (VTS).
    svc$describe_tape_archives(
      Limit = 123L,
      Marker = "1",
      TapeARNs = list(
        "arn:aws:storagegateway:us-east-1:999999999999:tape/AM08A1AD",
        "arn:aws:storagegateway:us-east-1:999999999999:tape/AMZN01A2A4"
      )
    )

    ## End(Not run)

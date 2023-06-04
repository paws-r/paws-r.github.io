<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssmincidents_get_replication_set</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieve your Incident Manager replication set

### Description

Retrieve your Incident Manager replication set.

### Usage

    ssmincidents_get_replication_set(arn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ssmincidents_get_replication_set_:_arn">arn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the replication set
you want to retrieve.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      replicationSet = list(
        arn = "string",
        createdBy = "string",
        createdTime = as.POSIXct(
          "2015-01-01"
        ),
        deletionProtected = TRUE|FALSE,
        lastModifiedBy = "string",
        lastModifiedTime = as.POSIXct(
          "2015-01-01"
        ),
        regionMap = list(
          list(
            sseKmsKeyId = "string",
            status = "ACTIVE"|"CREATING"|"DELETING"|"FAILED",
            statusMessage = "string",
            statusUpdateDateTime = as.POSIXct(
              "2015-01-01"
            )
          )
        ),
        status = "ACTIVE"|"CREATING"|"UPDATING"|"DELETING"|"FAILED"
      )
    )

### Request syntax

    svc$get_replication_set(
      arn = "string"
    )

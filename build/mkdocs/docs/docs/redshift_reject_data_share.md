<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>redshift_reject_data_share</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## From a datashare consumer account, rejects the specified datashare

### Description

From a datashare consumer account, rejects the specified datashare.

### Usage

    redshift_reject_data_share(DataShareArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="redshift_reject_data_share_:_DataShareArn">DataShareArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the datashare to
reject.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DataShareArn = "string",
      ProducerArn = "string",
      AllowPubliclyAccessibleConsumers = TRUE|FALSE,
      DataShareAssociations = list(
        list(
          ConsumerIdentifier = "string",
          Status = "ACTIVE"|"PENDING_AUTHORIZATION"|"AUTHORIZED"|"DEAUTHORIZED"|"REJECTED"|"AVAILABLE",
          ConsumerRegion = "string",
          CreatedDate = as.POSIXct(
            "2015-01-01"
          ),
          StatusChangeDate = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      ManagedBy = "string"
    )

### Request syntax

    svc$reject_data_share(
      DataShareArn = "string"
    )

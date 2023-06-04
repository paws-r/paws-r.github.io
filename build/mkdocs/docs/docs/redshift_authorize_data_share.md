<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>redshift_authorize_data_share</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## From a data producer account, authorizes the sharing of a datashare with one or more consumer accounts or managing entities

### Description

From a data producer account, authorizes the sharing of a datashare with
one or more consumer accounts or managing entities. To authorize a
datashare for a data consumer, the producer account must have the
correct access permissions.

### Usage

    redshift_authorize_data_share(DataShareArn, ConsumerIdentifier)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="redshift_authorize_data_share_:_DataShareArn">DataShareArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the datashare that
producers are to authorize sharing for.</p></td>
</tr>
<tr class="even">
<td><code
id="redshift_authorize_data_share_:_ConsumerIdentifier">ConsumerIdentifier</code></td>
<td><p>[required] The identifier of the data consumer that is authorized
to access the datashare. This identifier is an Amazon Web Services
account ID or a keyword, such as ADX.</p></td>
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

    svc$authorize_data_share(
      DataShareArn = "string",
      ConsumerIdentifier = "string"
    )

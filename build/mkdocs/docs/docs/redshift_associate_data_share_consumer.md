<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>redshift_associate_data_share_consumer</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## From a datashare consumer account, associates a datashare with the account (AssociateEntireAccount) or the specified namespace (ConsumerArn)

### Description

From a datashare consumer account, associates a datashare with the
account (AssociateEntireAccount) or the specified namespace
(ConsumerArn). If you make this association, the consumer can consume
the datashare.

### Usage

    redshift_associate_data_share_consumer(DataShareArn,
      AssociateEntireAccount, ConsumerArn, ConsumerRegion)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="redshift_associate_data_share_consumer_:_DataShareArn">DataShareArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the datashare that
the consumer is to use with the account or the namespace.</p></td>
</tr>
<tr class="even">
<td><code
id="redshift_associate_data_share_consumer_:_AssociateEntireAccount">AssociateEntireAccount</code></td>
<td><p>A value that specifies whether the datashare is associated with
the entire account.</p></td>
</tr>
<tr class="odd">
<td><code
id="redshift_associate_data_share_consumer_:_ConsumerArn">ConsumerArn</code></td>
<td><p>The Amazon Resource Name (ARN) of the consumer that is associated
with the datashare.</p></td>
</tr>
<tr class="even">
<td><code
id="redshift_associate_data_share_consumer_:_ConsumerRegion">ConsumerRegion</code></td>
<td><p>From a datashare consumer account, associates a datashare with
all existing and future namespaces in the specified Amazon Web Services
Region.</p></td>
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

    svc$associate_data_share_consumer(
      DataShareArn = "string",
      AssociateEntireAccount = TRUE|FALSE,
      ConsumerArn = "string",
      ConsumerRegion = "string"
    )

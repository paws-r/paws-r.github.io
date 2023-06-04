<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>redshift_disassociate_data_share_consumer</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## From a datashare consumer account, remove association for the specified datashare

### Description

From a datashare consumer account, remove association for the specified
datashare.

### Usage

    redshift_disassociate_data_share_consumer(DataShareArn,
      DisassociateEntireAccount, ConsumerArn, ConsumerRegion)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="redshift_disassociate_data_share_consumer_:_DataShareArn">DataShareArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the datashare to
remove association for.</p></td>
</tr>
<tr class="even">
<td><code
id="redshift_disassociate_data_share_consumer_:_DisassociateEntireAccount">DisassociateEntireAccount</code></td>
<td><p>A value that specifies whether association for the datashare is
removed from the entire account.</p></td>
</tr>
<tr class="odd">
<td><code
id="redshift_disassociate_data_share_consumer_:_ConsumerArn">ConsumerArn</code></td>
<td><p>The Amazon Resource Name (ARN) of the consumer that association
for the datashare is removed from.</p></td>
</tr>
<tr class="even">
<td><code
id="redshift_disassociate_data_share_consumer_:_ConsumerRegion">ConsumerRegion</code></td>
<td><p>From a datashare consumer account, removes association of a
datashare from all the existing and future namespaces in the specified
Amazon Web Services Region.</p></td>
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

    svc$disassociate_data_share_consumer(
      DataShareArn = "string",
      DisassociateEntireAccount = TRUE|FALSE,
      ConsumerArn = "string",
      ConsumerRegion = "string"
    )

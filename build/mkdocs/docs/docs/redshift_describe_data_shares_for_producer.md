<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>redshift_describe_data_shares_for_producer</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of datashares when the account identifier being called is a producer account identifier

### Description

Returns a list of datashares when the account identifier being called is
a producer account identifier.

### Usage

    redshift_describe_data_shares_for_producer(ProducerArn, Status,
      MaxRecords, Marker)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="redshift_describe_data_shares_for_producer_:_ProducerArn">ProducerArn</code></td>
<td><p>The Amazon Resource Name (ARN) of the producer that returns in
the list of datashares.</p></td>
</tr>
<tr class="even">
<td><code
id="redshift_describe_data_shares_for_producer_:_Status">Status</code></td>
<td><p>An identifier giving the status of a datashare in the producer.
If this field is specified, Amazon Redshift returns the list of
datashares that have the specified status.</p></td>
</tr>
<tr class="odd">
<td><code
id="redshift_describe_data_shares_for_producer_:_MaxRecords">MaxRecords</code></td>
<td><p>The maximum number of response records to return in each call. If
the number of remaining response records exceeds the specified
<code>MaxRecords</code> value, a value is returned in a
<code>marker</code> field of the response. You can retrieve the next set
of records by retrying the command with the returned marker
value.</p></td>
</tr>
<tr class="even">
<td><code
id="redshift_describe_data_shares_for_producer_:_Marker">Marker</code></td>
<td><p>An optional parameter that specifies the starting point to return
a set of response records. When the results of a
<code>describe_data_shares_for_producer</code> request exceed the value
specified in <code>MaxRecords</code>, Amazon Web Services returns a
value in the <code>Marker</code> field of the response. You can retrieve
the next set of response records by providing the returned marker value
in the <code>Marker</code> parameter and retrying the request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DataShares = list(
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
      ),
      Marker = "string"
    )

### Request syntax

    svc$describe_data_shares_for_producer(
      ProducerArn = "string",
      Status = "ACTIVE"|"AUTHORIZED"|"PENDING_AUTHORIZATION"|"DEAUTHORIZED"|"REJECTED",
      MaxRecords = 123,
      Marker = "string"
    )

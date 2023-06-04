<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>redshift_describe_data_shares</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Shows the status of any inbound or outbound datashares available in the specified account

### Description

Shows the status of any inbound or outbound datashares available in the
specified account.

### Usage

    redshift_describe_data_shares(DataShareArn, MaxRecords, Marker)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="redshift_describe_data_shares_:_DataShareArn">DataShareArn</code></td>
<td><p>The identifier of the datashare to describe details of.</p></td>
</tr>
<tr class="even">
<td><code
id="redshift_describe_data_shares_:_MaxRecords">MaxRecords</code></td>
<td><p>The maximum number of response records to return in each call. If
the number of remaining response records exceeds the specified
<code>MaxRecords</code> value, a value is returned in a
<code>marker</code> field of the response. You can retrieve the next set
of records by retrying the command with the returned marker
value.</p></td>
</tr>
<tr class="odd">
<td><code id="redshift_describe_data_shares_:_Marker">Marker</code></td>
<td><p>An optional parameter that specifies the starting point to return
a set of response records. When the results of a
<code>describe_data_shares</code> request exceed the value specified in
<code>MaxRecords</code>, Amazon Web Services returns a value in the
<code>Marker</code> field of the response. You can retrieve the next set
of response records by providing the returned marker value in the
<code>Marker</code> parameter and retrying the request.</p></td>
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

    svc$describe_data_shares(
      DataShareArn = "string",
      MaxRecords = 123,
      Marker = "string"
    )

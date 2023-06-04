<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>pinpointsmsvoicev2_describe_sender_ids</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the specified SenderIds or all SenderIds associated with your Amazon Web Services account

### Description

Describes the specified SenderIds or all SenderIds associated with your
Amazon Web Services account.

If you specify SenderIds, the output includes information for only the
specified SenderIds. If you specify filters, the output includes
information for only those SenderIds that meet the filter criteria. If
you don't specify SenderIds or filters, the output includes information
for all SenderIds.

f you specify a sender ID that isn't valid, an Error is returned.

### Usage

    pinpointsmsvoicev2_describe_sender_ids(SenderIds, Filters, NextToken,
      MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="pinpointsmsvoicev2_describe_sender_ids_:_SenderIds">SenderIds</code></td>
<td><p>An array of SenderIdAndCountry objects to search for.</p></td>
</tr>
<tr class="even">
<td><code
id="pinpointsmsvoicev2_describe_sender_ids_:_Filters">Filters</code></td>
<td><p>An array of SenderIdFilter objects to filter the
results.</p></td>
</tr>
<tr class="odd">
<td><code
id="pinpointsmsvoicev2_describe_sender_ids_:_NextToken">NextToken</code></td>
<td><p>The token to be used for the next set of paginated results. You
don't need to supply a value for this field in the initial
request.</p></td>
</tr>
<tr class="even">
<td><code
id="pinpointsmsvoicev2_describe_sender_ids_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return per each
request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      SenderIds = list(
        list(
          SenderIdArn = "string",
          SenderId = "string",
          IsoCountryCode = "string",
          MessageTypes = list(
            "TRANSACTIONAL"|"PROMOTIONAL"
          ),
          MonthlyLeasingPrice = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_sender_ids(
      SenderIds = list(
        list(
          SenderId = "string",
          IsoCountryCode = "string"
        )
      ),
      Filters = list(
        list(
          Name = "sender-id"|"iso-country-code"|"message-type",
          Values = list(
            "string"
          )
        )
      ),
      NextToken = "string",
      MaxResults = 123
    )

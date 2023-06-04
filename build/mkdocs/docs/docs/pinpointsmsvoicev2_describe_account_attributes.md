<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>pinpointsmsvoicev2_describe_account_attributes</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes attributes of your Amazon Web Services account

### Description

Describes attributes of your Amazon Web Services account. The supported
account attributes include account tier, which indicates whether your
account is in the sandbox or production environment. When you're ready
to move your account out of the sandbox, create an Amazon Web Services
Support case for a service limit increase request.

New Amazon Pinpoint accounts are placed into an SMS or voice sandbox.
The sandbox protects both Amazon Web Services end recipients and SMS or
voice recipients from fraud and abuse.

### Usage

    pinpointsmsvoicev2_describe_account_attributes(NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="pinpointsmsvoicev2_describe_account_attributes_:_NextToken">NextToken</code></td>
<td><p>The token to be used for the next set of paginated results. You
don't need to supply a value for this field in the initial
request.</p></td>
</tr>
<tr class="even">
<td><code
id="pinpointsmsvoicev2_describe_account_attributes_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return per each
request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AccountAttributes = list(
        list(
          Name = "ACCOUNT_TIER",
          Value = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_account_attributes(
      NextToken = "string",
      MaxResults = 123
    )

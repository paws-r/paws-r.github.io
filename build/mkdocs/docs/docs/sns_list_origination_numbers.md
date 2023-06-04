<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sns_list_origination_numbers</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the calling Amazon Web Services account's dedicated origination numbers and their metadata

### Description

Lists the calling Amazon Web Services account's dedicated origination
numbers and their metadata. For more information about origination
numbers, see [Origination
numbers](https://docs.aws.amazon.com/sns/latest/dg/channels-sms-originating-identities-origination-numbers.html)
in the *Amazon SNS Developer Guide*.

### Usage

    sns_list_origination_numbers(NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sns_list_origination_numbers_:_NextToken">NextToken</code></td>
<td><p>Token that the previous <code>list_origination_numbers</code>
request returns.</p></td>
</tr>
<tr class="even">
<td><code
id="sns_list_origination_numbers_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of origination numbers to return.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextToken = "string",
      PhoneNumbers = list(
        list(
          CreatedAt = as.POSIXct(
            "2015-01-01"
          ),
          PhoneNumber = "string",
          Status = "string",
          Iso2CountryCode = "string",
          RouteType = "Transactional"|"Promotional"|"Premium",
          NumberCapabilities = list(
            "SMS"|"MMS"|"VOICE"
          )
        )
      )
    )

### Request syntax

    svc$list_origination_numbers(
      NextToken = "string",
      MaxResults = 123
    )

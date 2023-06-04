<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>pinpointsmsvoicev2_describe_phone_numbers</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the specified origination phone number, or all the phone numbers in your account

### Description

Describes the specified origination phone number, or all the phone
numbers in your account.

If you specify phone number IDs, the output includes information for
only the specified phone numbers. If you specify filters, the output
includes information for only those phone numbers that meet the filter
criteria. If you don't specify phone number IDs or filters, the output
includes information for all phone numbers.

If you specify a phone number ID that isn't valid, an Error is returned.

### Usage

    pinpointsmsvoicev2_describe_phone_numbers(PhoneNumberIds, Filters,
      NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="pinpointsmsvoicev2_describe_phone_numbers_:_PhoneNumberIds">PhoneNumberIds</code></td>
<td><p>The unique identifier of phone numbers to find information about.
This is an array of strings that can be either the PhoneNumberId or
PhoneNumberArn.</p></td>
</tr>
<tr class="even">
<td><code
id="pinpointsmsvoicev2_describe_phone_numbers_:_Filters">Filters</code></td>
<td><p>An array of PhoneNumberFilter objects to filter the
results.</p></td>
</tr>
<tr class="odd">
<td><code
id="pinpointsmsvoicev2_describe_phone_numbers_:_NextToken">NextToken</code></td>
<td><p>The token to be used for the next set of paginated results. You
don't need to supply a value for this field in the initial
request.</p></td>
</tr>
<tr class="even">
<td><code
id="pinpointsmsvoicev2_describe_phone_numbers_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return per each
request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      PhoneNumbers = list(
        list(
          PhoneNumberArn = "string",
          PhoneNumberId = "string",
          PhoneNumber = "string",
          Status = "PENDING"|"ACTIVE"|"ASSOCIATING"|"DISASSOCIATING"|"DELETED",
          IsoCountryCode = "string",
          MessageType = "TRANSACTIONAL"|"PROMOTIONAL",
          NumberCapabilities = list(
            "SMS"|"VOICE"
          ),
          NumberType = "SHORT_CODE"|"LONG_CODE"|"TOLL_FREE"|"TEN_DLC",
          MonthlyLeasingPrice = "string",
          TwoWayEnabled = TRUE|FALSE,
          TwoWayChannelArn = "string",
          SelfManagedOptOutsEnabled = TRUE|FALSE,
          OptOutListName = "string",
          DeletionProtectionEnabled = TRUE|FALSE,
          PoolId = "string",
          CreatedTimestamp = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_phone_numbers(
      PhoneNumberIds = list(
        "string"
      ),
      Filters = list(
        list(
          Name = "status"|"iso-country-code"|"message-type"|"number-capability"|"number-type"|"two-way-enabled"|"self-managed-opt-outs-enabled"|"opt-out-list-name"|"deletion-protection-enabled",
          Values = list(
            "string"
          )
        )
      ),
      NextToken = "string",
      MaxResults = 123
    )

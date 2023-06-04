<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatchevents_list_partner_event_source_accounts</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## An SaaS partner can use this operation to display the Amazon Web Services account ID that a particular partner event source name is associated with

### Description

An SaaS partner can use this operation to display the Amazon Web
Services account ID that a particular partner event source name is
associated with. This operation is not used by Amazon Web Services
customers.

### Usage

    cloudwatchevents_list_partner_event_source_accounts(EventSourceName,
      NextToken, Limit)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudwatchevents_list_partner_event_source_accounts_:_EventSourceName">EventSourceName</code></td>
<td><p>[required] The name of the partner event source to display
account information about.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchevents_list_partner_event_source_accounts_:_NextToken">NextToken</code></td>
<td><p>The token returned by a previous call to this operation.
Specifying this retrieves the next set of results.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudwatchevents_list_partner_event_source_accounts_:_Limit">Limit</code></td>
<td><p>Specifying this limits the number of results returned by this
operation. The operation also returns a NextToken which you can use in a
subsequent operation to retrieve the next set of results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      PartnerEventSourceAccounts = list(
        list(
          Account = "string",
          CreationTime = as.POSIXct(
            "2015-01-01"
          ),
          ExpirationTime = as.POSIXct(
            "2015-01-01"
          ),
          State = "PENDING"|"ACTIVE"|"DELETED"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_partner_event_source_accounts(
      EventSourceName = "string",
      NextToken = "string",
      Limit = 123
    )

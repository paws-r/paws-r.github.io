<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codestarnotifications_list_notification_rules</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of the notification rules for an Amazon Web Services account

### Description

Returns a list of the notification rules for an Amazon Web Services
account.

### Usage

    codestarnotifications_list_notification_rules(Filters, NextToken,
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
id="codestarnotifications_list_notification_rules_:_Filters">Filters</code></td>
<td><p>The filters to use to return information by service or resource
type. For valid values, see ListNotificationRulesFilter.</p>
<p>A filter with the same name can appear more than once when used with
OR statements. Filters with different names should be applied with AND
statements.</p></td>
</tr>
<tr class="even">
<td><code
id="codestarnotifications_list_notification_rules_:_NextToken">NextToken</code></td>
<td><p>An enumeration token that, when provided in a request, returns
the next batch of the results.</p></td>
</tr>
<tr class="odd">
<td><code
id="codestarnotifications_list_notification_rules_:_MaxResults">MaxResults</code></td>
<td><p>A non-negative integer used to limit the number of returned
results. The maximum number of results that can be returned is
100.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextToken = "string",
      NotificationRules = list(
        list(
          Id = "string",
          Arn = "string"
        )
      )
    )

### Request syntax

    svc$list_notification_rules(
      Filters = list(
        list(
          Name = "EVENT_TYPE_ID"|"CREATED_BY"|"RESOURCE"|"TARGET_ADDRESS",
          Value = "string"
        )
      ),
      NextToken = "string",
      MaxResults = 123
    )

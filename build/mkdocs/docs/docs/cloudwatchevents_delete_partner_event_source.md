<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatchevents_delete_partner_event_source</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This operation is used by SaaS partners to delete a partner event source

### Description

This operation is used by SaaS partners to delete a partner event
source. This operation is not used by Amazon Web Services customers.

When you delete an event source, the status of the corresponding partner
event bus in the Amazon Web Services customer account becomes DELETED.

### Usage

    cloudwatchevents_delete_partner_event_source(Name, Account)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudwatchevents_delete_partner_event_source_:_Name">Name</code></td>
<td><p>[required] The name of the event source to delete.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchevents_delete_partner_event_source_:_Account">Account</code></td>
<td><p>[required] The Amazon Web Services account ID of the Amazon Web
Services customer that the event source was created for.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_partner_event_source(
      Name = "string",
      Account = "string"
    )

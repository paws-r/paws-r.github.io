<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatchevents_create_partner_event_source</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Called by an SaaS partner to create a partner event source

### Description

Called by an SaaS partner to create a partner event source. This
operation is not used by Amazon Web Services customers.

Each partner event source can be used by one Amazon Web Services account
to create a matching partner event bus in that Amazon Web Services
account. A SaaS partner must create one partner event source for each
Amazon Web Services account that wants to receive those event types.

A partner event source creates events based on resources within the SaaS
partner's service or application.

An Amazon Web Services account that creates a partner event bus that
matches the partner event source can use that event bus to receive
events from the partner, and then process them using Amazon Web Services
Events rules and targets.

Partner event source names follow this format:

`partner_name/event_namespace/event_name`

*partner\_name* is determined during partner registration and identifies
the partner to Amazon Web Services customers. *event\_namespace* is
determined by the partner and is a way for the partner to categorize
their events. *event\_name* is determined by the partner, and should
uniquely identify an event-generating resource within the partner
system. The combination of *event\_namespace* and *event\_name* should
help Amazon Web Services customers decide whether to create an event bus
to receive these events.

### Usage

    cloudwatchevents_create_partner_event_source(Name, Account)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudwatchevents_create_partner_event_source_:_Name">Name</code></td>
<td><p>[required] The name of the partner event source. This name must
be unique and must be in the format
<code>partner_name/event_namespace/event_name</code>. The Amazon Web
Services account that wants to use this partner event source must create
a partner event bus with a name that matches the name of the partner
event source.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchevents_create_partner_event_source_:_Account">Account</code></td>
<td><p>[required] The Amazon Web Services account ID that is permitted
to create a matching partner event bus for this partner event
source.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      EventSourceArn = "string"
    )

### Request syntax

    svc$create_partner_event_source(
      Name = "string",
      Account = "string"
    )

<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatchevents_describe_partner_event_source</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## An SaaS partner can use this operation to list details about a partner event source that they have created

### Description

An SaaS partner can use this operation to list details about a partner
event source that they have created. Amazon Web Services customers do
not use this operation. Instead, Amazon Web Services customers can use
`describe_event_source` to see details about a partner event source that
is shared with them.

### Usage

    cloudwatchevents_describe_partner_event_source(Name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudwatchevents_describe_partner_event_source_:_Name">Name</code></td>
<td><p>[required] The name of the event source to display.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Arn = "string",
      Name = "string"
    )

### Request syntax

    svc$describe_partner_event_source(
      Name = "string"
    )

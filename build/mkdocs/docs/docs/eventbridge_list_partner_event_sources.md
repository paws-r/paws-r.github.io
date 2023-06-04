<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>eventbridge_list_partner_event_sources</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## An SaaS partner can use this operation to list all the partner event source names that they have created

### Description

An SaaS partner can use this operation to list all the partner event
source names that they have created. This operation is not used by
Amazon Web Services customers.

### Usage

    eventbridge_list_partner_event_sources(NamePrefix, NextToken, Limit)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="eventbridge_list_partner_event_sources_:_NamePrefix">NamePrefix</code></td>
<td><p>[required] If you specify this, the results are limited to only
those partner event sources that start with the string you
specify.</p></td>
</tr>
<tr class="even">
<td><code
id="eventbridge_list_partner_event_sources_:_NextToken">NextToken</code></td>
<td><p>The token returned by a previous call to this operation.
Specifying this retrieves the next set of results.</p></td>
</tr>
<tr class="odd">
<td><code
id="eventbridge_list_partner_event_sources_:_Limit">Limit</code></td>
<td><p>pecifying this limits the number of results returned by this
operation. The operation also returns a NextToken which you can use in a
subsequent operation to retrieve the next set of results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      PartnerEventSources = list(
        list(
          Arn = "string",
          Name = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_partner_event_sources(
      NamePrefix = "string",
      NextToken = "string",
      Limit = 123
    )

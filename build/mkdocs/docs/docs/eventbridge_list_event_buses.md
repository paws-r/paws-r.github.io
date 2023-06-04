<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>eventbridge_list_event_buses</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists all the event buses in your account, including the default event bus, custom event buses, and partner event buses

### Description

Lists all the event buses in your account, including the default event
bus, custom event buses, and partner event buses.

### Usage

    eventbridge_list_event_buses(NamePrefix, NextToken, Limit)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="eventbridge_list_event_buses_:_NamePrefix">NamePrefix</code></td>
<td><p>Specifying this limits the results to only those event buses with
names that start with the specified prefix.</p></td>
</tr>
<tr class="even">
<td><code
id="eventbridge_list_event_buses_:_NextToken">NextToken</code></td>
<td><p>The token returned by a previous call to retrieve the next set of
results.</p></td>
</tr>
<tr class="odd">
<td><code id="eventbridge_list_event_buses_:_Limit">Limit</code></td>
<td><p>Specifying this limits the number of results returned by this
operation. The operation also returns a NextToken which you can use in a
subsequent operation to retrieve the next set of results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      EventBuses = list(
        list(
          Name = "string",
          Arn = "string",
          Policy = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_event_buses(
      NamePrefix = "string",
      NextToken = "string",
      Limit = 123
    )

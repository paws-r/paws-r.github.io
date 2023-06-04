<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>schemas_get_discovered_schema</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Get the discovered schema that was generated based on sampled events

### Description

Get the discovered schema that was generated based on sampled events.

### Usage

    schemas_get_discovered_schema(Events, Type)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="schemas_get_discovered_schema_:_Events">Events</code></td>
<td><p>[required] An array of strings where each string is a JSON event.
These are the events that were used to generate the schema. The array
includes a single type of event and has a maximum size of 10
events.</p></td>
</tr>
<tr class="even">
<td><code id="schemas_get_discovered_schema_:_Type">Type</code></td>
<td><p>[required] The type of event.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Content = "string"
    )

### Request syntax

    svc$get_discovered_schema(
      Events = list(
        "string"
      ),
      Type = "OpenApi3"|"JSONSchemaDraft4"
    )

<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>eventbridge_describe_event_source</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This operation lists details about a partner event source that is shared with your account

### Description

This operation lists details about a partner event source that is shared
with your account.

### Usage

    eventbridge_describe_event_source(Name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="eventbridge_describe_event_source_:_Name">Name</code></td>
<td><p>[required] The name of the partner event source to display the
details of.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Arn = "string",
      CreatedBy = "string",
      CreationTime = as.POSIXct(
        "2015-01-01"
      ),
      ExpirationTime = as.POSIXct(
        "2015-01-01"
      ),
      Name = "string",
      State = "PENDING"|"ACTIVE"|"DELETED"
    )

### Request syntax

    svc$describe_event_source(
      Name = "string"
    )

<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workmail_describe_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the data available for the resource

### Description

Returns the data available for the resource.

### Usage

    workmail_describe_resource(OrganizationId, ResourceId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workmail_describe_resource_:_OrganizationId">OrganizationId</code></td>
<td><p>[required] The identifier associated with the organization for
which the resource is described.</p></td>
</tr>
<tr class="even">
<td><code
id="workmail_describe_resource_:_ResourceId">ResourceId</code></td>
<td><p>[required] The identifier of the resource to be
described.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ResourceId = "string",
      Email = "string",
      Name = "string",
      Type = "ROOM"|"EQUIPMENT",
      BookingOptions = list(
        AutoAcceptRequests = TRUE|FALSE,
        AutoDeclineRecurringRequests = TRUE|FALSE,
        AutoDeclineConflictingRequests = TRUE|FALSE
      ),
      State = "ENABLED"|"DISABLED"|"DELETED",
      EnabledDate = as.POSIXct(
        "2015-01-01"
      ),
      DisabledDate = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$describe_resource(
      OrganizationId = "string",
      ResourceId = "string"
    )

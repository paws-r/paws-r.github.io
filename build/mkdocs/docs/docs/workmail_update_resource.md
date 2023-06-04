<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workmail_update_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates data for the resource

### Description

Updates data for the resource. To have the latest information, it must
be preceded by a `describe_resource` call. The dataset in the request
should be the one expected when performing another `describe_resource`
call.

### Usage

    workmail_update_resource(OrganizationId, ResourceId, Name,
      BookingOptions)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workmail_update_resource_:_OrganizationId">OrganizationId</code></td>
<td><p>[required] The identifier associated with the organization for
which the resource is updated.</p></td>
</tr>
<tr class="even">
<td><code
id="workmail_update_resource_:_ResourceId">ResourceId</code></td>
<td><p>[required] The identifier of the resource to be updated.</p></td>
</tr>
<tr class="odd">
<td><code id="workmail_update_resource_:_Name">Name</code></td>
<td><p>The name of the resource to be updated.</p></td>
</tr>
<tr class="even">
<td><code
id="workmail_update_resource_:_BookingOptions">BookingOptions</code></td>
<td><p>The resource's booking options to be updated.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_resource(
      OrganizationId = "string",
      ResourceId = "string",
      Name = "string",
      BookingOptions = list(
        AutoAcceptRequests = TRUE|FALSE,
        AutoDeclineRecurringRequests = TRUE|FALSE,
        AutoDeclineConflictingRequests = TRUE|FALSE
      )
    )

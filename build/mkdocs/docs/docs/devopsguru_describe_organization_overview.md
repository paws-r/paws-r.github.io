<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>devopsguru_describe_organization_overview</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns an overview of your organization's history based on the specified time range

### Description

Returns an overview of your organization's history based on the
specified time range. The overview includes the total reactive and
proactive insights.

### Usage

    devopsguru_describe_organization_overview(FromTime, ToTime, AccountIds,
      OrganizationalUnitIds)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="devopsguru_describe_organization_overview_:_FromTime">FromTime</code></td>
<td><p>[required] The start of the time range passed in. The start time
granularity is at the day level. The floor of the start time is used.
Returned information occurred after this day.</p></td>
</tr>
<tr class="even">
<td><code
id="devopsguru_describe_organization_overview_:_ToTime">ToTime</code></td>
<td><p>The end of the time range passed in. The start time granularity
is at the day level. The floor of the start time is used. Returned
information occurred before this day. If this is not specified, then the
current day is used.</p></td>
</tr>
<tr class="odd">
<td><code
id="devopsguru_describe_organization_overview_:_AccountIds">AccountIds</code></td>
<td><p>The ID of the Amazon Web Services account.</p></td>
</tr>
<tr class="even">
<td><code
id="devopsguru_describe_organization_overview_:_OrganizationalUnitIds">OrganizationalUnitIds</code></td>
<td><p>The ID of the organizational unit.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ReactiveInsights = 123,
      ProactiveInsights = 123
    )

### Request syntax

    svc$describe_organization_overview(
      FromTime = as.POSIXct(
        "2015-01-01"
      ),
      ToTime = as.POSIXct(
        "2015-01-01"
      ),
      AccountIds = list(
        "string"
      ),
      OrganizationalUnitIds = list(
        "string"
      )
    )

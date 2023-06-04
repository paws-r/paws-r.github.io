<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>devopsguru_describe_organization_health</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns active insights, predictive insights, and resource hours analyzed in last hour

### Description

Returns active insights, predictive insights, and resource hours
analyzed in last hour.

### Usage

    devopsguru_describe_organization_health(AccountIds,
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
id="devopsguru_describe_organization_health_:_AccountIds">AccountIds</code></td>
<td><p>The ID of the Amazon Web Services account.</p></td>
</tr>
<tr class="even">
<td><code
id="devopsguru_describe_organization_health_:_OrganizationalUnitIds">OrganizationalUnitIds</code></td>
<td><p>The ID of the organizational unit.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      OpenReactiveInsights = 123,
      OpenProactiveInsights = 123,
      MetricsAnalyzed = 123,
      ResourceHours = 123
    )

### Request syntax

    svc$describe_organization_health(
      AccountIds = list(
        "string"
      ),
      OrganizationalUnitIds = list(
        "string"
      )
    )

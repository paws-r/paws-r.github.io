<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>configservice_get_organization_conformance_pack_detailed_status</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns detailed status for each member account within an organization for a given organization conformance pack

### Description

Returns detailed status for each member account within an organization
for a given organization conformance pack.

### Usage

    configservice_get_organization_conformance_pack_detailed_status(
      OrganizationConformancePackName, Filters, Limit, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="configservice_get_organization_conformance_pack_detailed_status_:_OrganizationConformancePackName">OrganizationConformancePackName</code></td>
<td><p>[required] The name of organization conformance pack for which
you want status details for member accounts.</p></td>
</tr>
<tr class="even">
<td><code
id="configservice_get_organization_conformance_pack_detailed_status_:_Filters">Filters</code></td>
<td><p>An <code>OrganizationResourceDetailedStatusFilters</code>
object.</p></td>
</tr>
<tr class="odd">
<td><code
id="configservice_get_organization_conformance_pack_detailed_status_:_Limit">Limit</code></td>
<td><p>The maximum number of
<code>OrganizationConformancePackDetailedStatuses</code> returned on
each page. If you do not specify a number, Config uses the default. The
default is 100.</p></td>
</tr>
<tr class="even">
<td><code
id="configservice_get_organization_conformance_pack_detailed_status_:_NextToken">NextToken</code></td>
<td><p>The nextToken string returned on a previous page that you use to
get the next page of results in a paginated response.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      OrganizationConformancePackDetailedStatuses = list(
        list(
          AccountId = "string",
          ConformancePackName = "string",
          Status = "CREATE_SUCCESSFUL"|"CREATE_IN_PROGRESS"|"CREATE_FAILED"|"DELETE_SUCCESSFUL"|"DELETE_FAILED"|"DELETE_IN_PROGRESS"|"UPDATE_SUCCESSFUL"|"UPDATE_IN_PROGRESS"|"UPDATE_FAILED",
          ErrorCode = "string",
          ErrorMessage = "string",
          LastUpdateTime = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$get_organization_conformance_pack_detailed_status(
      OrganizationConformancePackName = "string",
      Filters = list(
        AccountId = "string",
        Status = "CREATE_SUCCESSFUL"|"CREATE_IN_PROGRESS"|"CREATE_FAILED"|"DELETE_SUCCESSFUL"|"DELETE_FAILED"|"DELETE_IN_PROGRESS"|"UPDATE_SUCCESSFUL"|"UPDATE_IN_PROGRESS"|"UPDATE_FAILED"
      ),
      Limit = 123,
      NextToken = "string"
    )

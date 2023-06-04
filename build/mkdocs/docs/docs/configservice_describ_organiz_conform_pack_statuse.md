<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>configservice_describe_organization_conformance_pack_statuses</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Provides organization conformance pack deployment status for an organization

### Description

Provides organization conformance pack deployment status for an
organization.

The status is not considered successful until organization conformance
pack is successfully deployed in all the member accounts with an
exception of excluded accounts.

When you specify the limit and the next token, you receive a paginated
response. Limit and next token are not applicable if you specify
organization conformance pack names. They are only applicable, when you
request all the organization conformance packs.

### Usage

    configservice_describe_organization_conformance_pack_statuses(
      OrganizationConformancePackNames, Limit, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="configservice_describe_organization_conformance_pack_statuses_:_OrganizationConformancePackNames">OrganizationConformancePackNames</code></td>
<td><p>The names of organization conformance packs for which you want
status details. If you do not specify any names, Config returns details
for all your organization conformance packs.</p></td>
</tr>
<tr class="even">
<td><code
id="configservice_describe_organization_conformance_pack_statuses_:_Limit">Limit</code></td>
<td><p>The maximum number of OrganizationConformancePackStatuses
returned on each page. If you do no specify a number, Config uses the
default. The default is 100.</p></td>
</tr>
<tr class="odd">
<td><code
id="configservice_describe_organization_conformance_pack_statuses_:_NextToken">NextToken</code></td>
<td><p>The nextToken string returned on a previous page that you use to
get the next page of results in a paginated response.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      OrganizationConformancePackStatuses = list(
        list(
          OrganizationConformancePackName = "string",
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

    svc$describe_organization_conformance_pack_statuses(
      OrganizationConformancePackNames = list(
        "string"
      ),
      Limit = 123,
      NextToken = "string"
    )

<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>configservice_describe_organization_conformance_packs</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of organization conformance packs

### Description

Returns a list of organization conformance packs.

When you specify the limit and the next token, you receive a paginated
response.

Limit and next token are not applicable if you specify organization
conformance packs names. They are only applicable, when you request all
the organization conformance packs.

*For accounts within an organzation*

If you deploy an organizational rule or conformance pack in an
organization administrator account, and then establish a delegated
administrator and deploy an organizational rule or conformance pack in
the delegated administrator account, you won't be able to see the
organizational rule or conformance pack in the organization
administrator account from the delegated administrator account or see
the organizational rule or conformance pack in the delegated
administrator account from organization administrator account. The
`describe_organization_config_rules` and
`describe_organization_conformance_packs` APIs can only see and interact
with the organization-related resource that were deployed from within
the account calling those APIs.

### Usage

    configservice_describe_organization_conformance_packs(
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
id="configservice_describe_organization_conformance_packs_:_OrganizationConformancePackNames">OrganizationConformancePackNames</code></td>
<td><p>The name that you assign to an organization conformance
pack.</p></td>
</tr>
<tr class="even">
<td><code
id="configservice_describe_organization_conformance_packs_:_Limit">Limit</code></td>
<td><p>The maximum number of organization config packs returned on each
page. If you do no specify a number, Config uses the default. The
default is 100.</p></td>
</tr>
<tr class="odd">
<td><code
id="configservice_describe_organization_conformance_packs_:_NextToken">NextToken</code></td>
<td><p>The nextToken string returned on a previous page that you use to
get the next page of results in a paginated response.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      OrganizationConformancePacks = list(
        list(
          OrganizationConformancePackName = "string",
          OrganizationConformancePackArn = "string",
          DeliveryS3Bucket = "string",
          DeliveryS3KeyPrefix = "string",
          ConformancePackInputParameters = list(
            list(
              ParameterName = "string",
              ParameterValue = "string"
            )
          ),
          ExcludedAccounts = list(
            "string"
          ),
          LastUpdateTime = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_organization_conformance_packs(
      OrganizationConformancePackNames = list(
        "string"
      ),
      Limit = 123,
      NextToken = "string"
    )

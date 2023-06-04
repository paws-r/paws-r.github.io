<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workmail_list_availability_configurations</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## List all the AvailabilityConfiguration's for the given WorkMail organization

### Description

List all the `AvailabilityConfiguration`'s for the given WorkMail
organization.

### Usage

    workmail_list_availability_configurations(OrganizationId, MaxResults,
      NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workmail_list_availability_configurations_:_OrganizationId">OrganizationId</code></td>
<td><p>[required] The WorkMail organization for which the
<code>AvailabilityConfiguration</code>'s will be listed.</p></td>
</tr>
<tr class="even">
<td><code
id="workmail_list_availability_configurations_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return in a single
call.</p></td>
</tr>
<tr class="odd">
<td><code
id="workmail_list_availability_configurations_:_NextToken">NextToken</code></td>
<td><p>The token to use to retrieve the next page of results. The first
call does not require a token.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AvailabilityConfigurations = list(
        list(
          DomainName = "string",
          ProviderType = "EWS"|"LAMBDA",
          EwsProvider = list(
            EwsEndpoint = "string",
            EwsUsername = "string"
          ),
          LambdaProvider = list(
            LambdaArn = "string"
          ),
          DateCreated = as.POSIXct(
            "2015-01-01"
          ),
          DateModified = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_availability_configurations(
      OrganizationId = "string",
      MaxResults = 123,
      NextToken = "string"
    )

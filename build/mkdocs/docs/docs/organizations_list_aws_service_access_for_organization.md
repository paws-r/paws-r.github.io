<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>organizations_list_aws_service_access_for_organization</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of the Amazon Web Services services that you enabled to integrate with your organization

### Description

Returns a list of the Amazon Web Services services that you enabled to
integrate with your organization. After a service on this list creates
the resources that it requires for the integration, it can perform
operations on your organization and its accounts.

For more information about integrating other services with
Organizations, including the list of services that currently work with
Organizations, see [Integrating Organizations with Other Amazon Web
Services
Services](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_integrate_services.html)
in the *Organizations User Guide.*

This operation can be called only from the organization's management
account or by a member account that is a delegated administrator for an
Amazon Web Services service.

### Usage

    organizations_list_aws_service_access_for_organization(NextToken,
      MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="organizations_list_aws_service_access_for_organization_:_NextToken">NextToken</code></td>
<td><p>The parameter for receiving additional results if you receive a
<code>NextToken</code> response in a previous request. A
<code>NextToken</code> response indicates that more output is available.
Set this parameter to the value of the previous call's
<code>NextToken</code> response to indicate where the output should
continue from.</p></td>
</tr>
<tr class="even">
<td><code
id="organizations_list_aws_service_access_for_organization_:_MaxResults">MaxResults</code></td>
<td><p>The total number of results that you want included on each page
of the response. If you do not include this parameter, it defaults to a
value that is specific to the operation. If additional items exist
beyond the maximum you specify, the <code>NextToken</code> response
element is present and has a value (is not null). Include that value as
the <code>NextToken</code> request parameter in the next call to the
operation to get the next part of the results. Note that Organizations
might return fewer results than the maximum even when there are more
results available. You should check <code>NextToken</code> after every
operation to ensure that you receive all of the results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      EnabledServicePrincipals = list(
        list(
          ServicePrincipal = "string",
          DateEnabled = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_aws_service_access_for_organization(
      NextToken = "string",
      MaxResults = 123
    )

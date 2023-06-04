<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>organizations_enable_aws_service_access</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Enables the integration of an Amazon Web Services service (the service that is specified by ServicePrincipal) with Organizations

### Description

Enables the integration of an Amazon Web Services service (the service
that is specified by `ServicePrincipal`) with Organizations. When you
enable integration, you allow the specified service to create a
[service-linked
role](https://docs.aws.amazon.com/IAM/latest/UserGuide/using-service-linked-roles.html)
in all the accounts in your organization. This allows the service to
perform operations on your behalf in your organization and its accounts.

We recommend that you enable integration between Organizations and the
specified Amazon Web Services service by using the console or commands
that are provided by the specified service. Doing so ensures that the
service is aware that it can create the resources that are required for
the integration. How the service creates those resources in the
organization's accounts depends on that service. For more information,
see the documentation for the other Amazon Web Services service.

For more information about enabling services to integrate with
Organizations, see [Integrating Organizations with Other Amazon Web
Services
Services](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_integrate_services.html)
in the *Organizations User Guide.*

You can only call this operation from the organization's management
account and only if the organization has [enabled all
features](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_org_support-all-features.html).

### Usage

    organizations_enable_aws_service_access(ServicePrincipal)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="organizations_enable_aws_service_access_:_ServicePrincipal">ServicePrincipal</code></td>
<td><p>[required] The service principal name of the Amazon Web Services
service for which you want to enable integration with your organization.
This is typically in the form of a URL, such as
<code> service-abbreviation.amazonaws.com</code>.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$enable_aws_service_access(
      ServicePrincipal = "string"
    )

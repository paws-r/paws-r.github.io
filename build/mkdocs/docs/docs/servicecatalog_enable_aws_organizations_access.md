<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>servicecatalog_enable_aws_organizations_access</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Enable portfolio sharing feature through Organizations

### Description

Enable portfolio sharing feature through Organizations. This API will
allow Service Catalog to receive updates on your organization in order
to sync your shares with the current structure. This API can only be
called by the management account in the organization.

When you call this API, Service Catalog calls
`organizations:EnableAWSServiceAccess` on your behalf so that your
shares stay in sync with any changes in your Organizations structure.

Note that a delegated administrator is not authorized to invoke
`enable_aws_organizations_access`.

If you have previously disabled Organizations access for Service
Catalog, and then enable access again, the portfolio access permissions
might not sync with the latest changes to the organization structure.
Specifically, accounts that you removed from the organization after
disabling Service Catalog access, and before you enabled access again,
can retain access to the previously shared portfolio. As a result, an
account that has been removed from the organization might still be able
to create or manage Amazon Web Services resources when it is no longer
authorized to do so. Amazon Web Services is working to resolve this
issue.

### Usage

    servicecatalog_enable_aws_organizations_access()

### Value

An empty list.

### Request syntax

    svc$enable_aws_organizations_access()

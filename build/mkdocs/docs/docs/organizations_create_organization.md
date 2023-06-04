<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>organizations_create_organization</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an Amazon Web Services organization

### Description

Creates an Amazon Web Services organization. The account whose user is
calling the `create_organization` operation automatically becomes the
[management
account](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_getting-started_concepts.html#account)
of the new organization.

This operation must be called using credentials from the account that is
to become the new organization's management account. The principal must
also have the relevant IAM permissions.

By default (or if you set the `FeatureSet` parameter to `ALL`), the new
organization is created with all features enabled and service control
policies automatically enabled in the root. If you instead choose to
create the organization supporting only the consolidated billing
features by setting the `FeatureSet` parameter to
`⁠CONSOLIDATED_BILLING\"⁠`, no policy types are enabled by default, and
you can't use organization policies

### Usage

    organizations_create_organization(FeatureSet)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="organizations_create_organization_:_FeatureSet">FeatureSet</code></td>
<td><p>Specifies the feature set supported by the new organization. Each
feature set supports different levels of functionality.</p>
<ul>
<li><p><code>CONSOLIDATED_BILLING</code>: All member accounts have their
bills consolidated to and paid by the management account. For more
information, see <a
href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_getting-started_concepts.html#feature-set-cb-only">Consolidated
billing</a> in the <em>Organizations User Guide.</em></p>
<p>The consolidated billing feature subset isn't available for
organizations in the Amazon Web Services GovCloud (US) Region.</p></li>
<li><p><code>ALL</code>: In addition to all the features supported by
the consolidated billing feature set, the management account can also
apply any policy type to any member account in the organization. For
more information, see <a
href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_getting-started_concepts.html#feature-set-all">All
features</a> in the <em>Organizations User Guide.</em></p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Organization = list(
        Id = "string",
        Arn = "string",
        FeatureSet = "ALL"|"CONSOLIDATED_BILLING",
        MasterAccountArn = "string",
        MasterAccountId = "string",
        MasterAccountEmail = "string",
        AvailablePolicyTypes = list(
          list(
            Type = "SERVICE_CONTROL_POLICY"|"TAG_POLICY"|"BACKUP_POLICY"|"AISERVICES_OPT_OUT_POLICY",
            Status = "ENABLED"|"PENDING_ENABLE"|"PENDING_DISABLE"
          )
        )
      )
    )

### Request syntax

    svc$create_organization(
      FeatureSet = "ALL"|"CONSOLIDATED_BILLING"
    )

### Examples

    ## Not run: 
    # Bill wants to create an organization using credentials from account
    # 111111111111. The following example shows that the account becomes the
    # master account in the new organization. Because he does not specify a
    # feature set, the new organization defaults to all features enabled and
    # service control policies enabled on the root:
    # 
    # 
    svc$create_organization()

    # In the following example, Bill creates an organization using credentials
    # from account 111111111111, and configures the organization to support
    # only the consolidated billing feature set:
    # 
    # 
    svc$create_organization(
      FeatureSet = "CONSOLIDATED_BILLING"
    )

    ## End(Not run)

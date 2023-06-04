<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>configservice_put_organization_conformance_pack</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deploys conformance packs across member accounts in an Amazon Web Services Organization

### Description

Deploys conformance packs across member accounts in an Amazon Web
Services Organization. For information on how many organization
conformance packs and how many Config rules you can have per account,
see [**Service
Limits**](https://docs.aws.amazon.com/config/latest/developerguide/configlimits.html)
in the Config Developer Guide.

Only a management account and a delegated administrator can call this
API. When calling this API with a delegated administrator, you must
ensure Organizations `ListDelegatedAdministrator` permissions are added.
An organization can have up to 3 delegated administrators.

This API enables organization service access for
`config-multiaccountsetup.amazonaws.com` through the
`EnableAWSServiceAccess` action and creates a service-linked role
`AWSServiceRoleForConfigMultiAccountSetup` in the management or
delegated administrator account of your organization. The service-linked
role is created only when the role does not exist in the caller account.
To use this API with delegated administrator, register a delegated
administrator by calling Amazon Web Services Organization
`register-delegate-admin` for `config-multiaccountsetup.amazonaws.com`.

Prerequisite: Ensure you call `EnableAllFeatures` API to enable all
features in an organization.

You must specify either the `TemplateS3Uri` or the `TemplateBody`
parameter, but not both. If you provide both Config uses the
`TemplateS3Uri` parameter and ignores the `TemplateBody` parameter.

Config sets the state of a conformance pack to CREATE\_IN\_PROGRESS and
UPDATE\_IN\_PROGRESS until the conformance pack is created or updated.
You cannot update a conformance pack while it is in this state.

### Usage

    configservice_put_organization_conformance_pack(
      OrganizationConformancePackName, TemplateS3Uri, TemplateBody,
      DeliveryS3Bucket, DeliveryS3KeyPrefix, ConformancePackInputParameters,
      ExcludedAccounts)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="configservice_put_organization_conformance_pack_:_OrganizationConformancePackName">OrganizationConformancePackName</code></td>
<td><p>[required] Name of the organization conformance pack you want to
create.</p></td>
</tr>
<tr class="even">
<td><code
id="configservice_put_organization_conformance_pack_:_TemplateS3Uri">TemplateS3Uri</code></td>
<td><p>Location of file containing the template body. The uri must point
to the conformance pack template (max size: 300 KB).</p>
<p>You must have access to read Amazon S3 bucket.</p></td>
</tr>
<tr class="odd">
<td><code
id="configservice_put_organization_conformance_pack_:_TemplateBody">TemplateBody</code></td>
<td><p>A string containing full conformance pack template body.
Structure containing the template body with a minimum length of 1 byte
and a maximum length of 51,200 bytes.</p></td>
</tr>
<tr class="even">
<td><code
id="configservice_put_organization_conformance_pack_:_DeliveryS3Bucket">DeliveryS3Bucket</code></td>
<td><p>The name of the Amazon S3 bucket where Config stores conformance
pack templates.</p>
<p>This field is optional. If used, it must be prefixed with
<code>awsconfigconforms</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="configservice_put_organization_conformance_pack_:_DeliveryS3KeyPrefix">DeliveryS3KeyPrefix</code></td>
<td><p>The prefix for the Amazon S3 bucket.</p>
<p>This field is optional.</p></td>
</tr>
<tr class="even">
<td><code
id="configservice_put_organization_conformance_pack_:_ConformancePackInputParameters">ConformancePackInputParameters</code></td>
<td><p>A list of <code>ConformancePackInputParameter</code>
objects.</p></td>
</tr>
<tr class="odd">
<td><code
id="configservice_put_organization_conformance_pack_:_ExcludedAccounts">ExcludedAccounts</code></td>
<td><p>A list of Amazon Web Services accounts to be excluded from an
organization conformance pack while deploying a conformance
pack.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      OrganizationConformancePackArn = "string"
    )

### Request syntax

    svc$put_organization_conformance_pack(
      OrganizationConformancePackName = "string",
      TemplateS3Uri = "string",
      TemplateBody = "string",
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
      )
    )

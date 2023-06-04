<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lakeformation_register_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Registers the resource as managed by the Data Catalog

### Description

Registers the resource as managed by the Data Catalog.

To add or update data, Lake Formation needs read/write access to the
chosen Amazon S3 path. Choose a role that you know has permission to do
this, or choose the AWSServiceRoleForLakeFormationDataAccess
service-linked role. When you register the first Amazon S3 path, the
service-linked role and a new inline policy are created on your behalf.
Lake Formation adds the first path to the inline policy and attaches it
to the service-linked role. When you register subsequent paths, Lake
Formation adds the path to the existing policy.

The following request registers a new location and gives Lake Formation
permission to use the service-linked role to access that location.

`⁠ResourceArn = arn:aws:s3:::my-bucket UseServiceLinkedRole = true⁠`

If `UseServiceLinkedRole` is not set to true, you must provide or set
the `RoleArn`:

`⁠arn:aws:iam::12345:role/my-data-access-role⁠`

### Usage

    lakeformation_register_resource(ResourceArn, UseServiceLinkedRole,
      RoleArn, WithFederation)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lakeformation_register_resource_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the resource that
you want to register.</p></td>
</tr>
<tr class="even">
<td><code
id="lakeformation_register_resource_:_UseServiceLinkedRole">UseServiceLinkedRole</code></td>
<td><p>Designates an Identity and Access Management (IAM) service-linked
role by registering this role with the Data Catalog. A service-linked
role is a unique type of IAM role that is linked directly to Lake
Formation.</p>
<p>For more information, see <a
href="https://docs.aws.amazon.com/lake-formation/latest/dg/service-linked-roles.html">Using
Service-Linked Roles for Lake Formation</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="lakeformation_register_resource_:_RoleArn">RoleArn</code></td>
<td><p>The identifier for the role that registers the resource.</p></td>
</tr>
<tr class="even">
<td><code
id="lakeformation_register_resource_:_WithFederation">WithFederation</code></td>
<td><p>Whether or not the resource is a federated resource.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$register_resource(
      ResourceArn = "string",
      UseServiceLinkedRole = TRUE|FALSE,
      RoleArn = "string",
      WithFederation = TRUE|FALSE
    )

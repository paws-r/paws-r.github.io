<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>iam_create_service_linked_role</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an IAM role that is linked to a specific Amazon Web Services service

### Description

Creates an IAM role that is linked to a specific Amazon Web Services
service. The service controls the attached policies and when the role
can be deleted. This helps ensure that the service is not broken by an
unexpectedly changed or deleted role, which could put your Amazon Web
Services resources into an unknown state. Allowing the service to
control the role helps improve service stability and proper cleanup when
a service and its role are no longer needed. For more information, see
[Using service-linked
roles](https://docs.aws.amazon.com/IAM/latest/UserGuide/using-service-linked-roles.html)
in the *IAM User Guide*.

To attach a policy to this service-linked role, you must make the
request using the Amazon Web Services service that depends on this role.

### Usage

    iam_create_service_linked_role(AWSServiceName, Description,
      CustomSuffix)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="iam_create_service_linked_role_:_AWSServiceName">AWSServiceName</code></td>
<td><p>[required] The service principal for the Amazon Web Services
service to which this role is attached. You use a string similar to a
URL but without the http:// in front. For example:
<code>elasticbeanstalk.amazonaws.com</code>.</p>
<p>Service principals are unique and case-sensitive. To find the exact
service principal for your service-linked role, see <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-services-that-work-with-iam.html">Amazon
Web Services services that work with IAM</a> in the <em>IAM User
Guide</em>. Look for the services that have <strong>Yes</strong> in the
<strong>Service-Linked Role</strong> column. Choose the
<strong>Yes</strong> link to view the service-linked role documentation
for that service.</p></td>
</tr>
<tr class="even">
<td><code
id="iam_create_service_linked_role_:_Description">Description</code></td>
<td><p>The description of the role.</p></td>
</tr>
<tr class="odd">
<td><code
id="iam_create_service_linked_role_:_CustomSuffix">CustomSuffix</code></td>
<td><p>A string that you provide, which is combined with the
service-provided prefix to form the complete role name. If you make
multiple requests for the same service, then you must supply a different
<code>CustomSuffix</code> for each request. Otherwise the request fails
with a duplicate role name error. For example, you could add
<code>-1</code> or <code>-debug</code> to the suffix.</p>
<p>Some services do not support the <code>CustomSuffix</code> parameter.
If you provide an optional suffix and the operation fails, try the
operation again without the suffix.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Role = list(
        Path = "string",
        RoleName = "string",
        RoleId = "string",
        Arn = "string",
        CreateDate = as.POSIXct(
          "2015-01-01"
        ),
        AssumeRolePolicyDocument = "string",
        Description = "string",
        MaxSessionDuration = 123,
        PermissionsBoundary = list(
          PermissionsBoundaryType = "PermissionsBoundaryPolicy",
          PermissionsBoundaryArn = "string"
        ),
        Tags = list(
          list(
            Key = "string",
            Value = "string"
          )
        ),
        RoleLastUsed = list(
          LastUsedDate = as.POSIXct(
            "2015-01-01"
          ),
          Region = "string"
        )
      )
    )

### Request syntax

    svc$create_service_linked_role(
      AWSServiceName = "string",
      Description = "string",
      CustomSuffix = "string"
    )

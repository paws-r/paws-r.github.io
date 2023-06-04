<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssoadmin</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## AWS Single Sign-On Admin

### Description

AWS IAM Identity Center (successor to AWS Single Sign-On) helps you
securely create, or connect, your workforce identities and manage their
access centrally across AWS accounts and applications. IAM Identity
Center is the recommended approach for workforce authentication and
authorization in AWS, for organizations of any size and type.

Although AWS Single Sign-On was renamed, the `sso` and `identitystore`
API namespaces will continue to retain their original name for backward
compatibility purposes. For more information, see [IAM Identity Center
rename](https://docs.aws.amazon.com/singlesignon/latest/userguide/what-is.html#renamed).

This reference guide provides information on single sign-on operations
which could be used for access management of AWS accounts. For
information about IAM Identity Center features, see the [IAM Identity
Center User
Guide](https://docs.aws.amazon.com/singlesignon/latest/userguide/what-is.html).

Many operations in the IAM Identity Center APIs rely on identifiers for
users and groups, known as principals. For more information about how to
work with principals and principal IDs in IAM Identity Center, see the
[Identity Store API
Reference](https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/welcome.html).

AWS provides SDKs that consist of libraries and sample code for various
programming languages and platforms (Java, Ruby, .Net, iOS, Android, and
more). The SDKs provide a convenient way to create programmatic access
to IAM Identity Center and other AWS services. For more information
about the AWS SDKs, including how to download and install them, see
[Tools for Amazon Web
Services](https://aws.amazon.com/developer/tools/).

### Usage

    ssoadmin(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ssoadmin_:_config">config</code></td>
<td><p>Optional configuration of credentials, endpoint, and/or
region.</p>
<ul>
<li><p><strong>access_key_id</strong>: AWS access key ID</p></li>
<li><p><strong>secret_access_key</strong>: AWS secret access
key</p></li>
<li><p><strong>session_token</strong>: AWS temporary session
token</p></li>
<li><p><strong>profile</strong>: The name of a profile to use. If not
given, then the default profile is used.</p></li>
<li><p><strong>anonymous</strong>: Set anonymous credentials.</p></li>
<li><p><strong>endpoint</strong>: The complete URL to use for the
constructed client.</p></li>
<li><p><strong>region</strong>: The AWS Region used in instantiating the
client.</p></li>
<li><p><strong>close_connection</strong>: Immediately close all HTTP
connections.</p></li>
<li><p><strong>timeout</strong>: The time in seconds till a timeout
exception is thrown when attempting to make a connection. The default is
60 seconds.</p></li>
<li><p><strong>s3_force_path_style</strong>: Set this to
<code>true</code> to force the request to use path-style addressing,
i.e., <code
style="white-space: pre;">⁠http://s3.amazonaws.com/BUCKET/KEY⁠</code>.</p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

A client for the service. You can call the service's operations using
syntax like `svc$operation(...)`, where `svc` is the name you've
assigned to the client. The available operations are listed in the
Operations section.

### Service syntax

    svc <- ssoadmin(
      config = list(
        credentials = list(
          creds = list(
            access_key_id = "string",
            secret_access_key = "string",
            session_token = "string"
          ),
          profile = "string",
          anonymous = "logical"
        ),
        endpoint = "string",
        region = "string",
        close_connection = "logical",
        timeout = "numeric",
        s3_force_path_style = "logical"
      )
    )

### Operations

<table>
<tbody>
<tr class="odd">
<td
style="text-align: left;"><a href="../ssoadmin_attach_customer_managed_policy_reference_to_permission_set/"> attach_customer_managed_policy_reference_to_permission_set </a></td>
<td style="text-align: left;">Attaches the specified customer managed
policy to the specified PermissionSet</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../ssoadmin_attach_managed_policy_to_permission_set/"> attach_managed_policy_to_permission_set </a></td>
<td style="text-align: left;">Attaches an AWS managed policy ARN to a
permission set</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ssoadmin_create_account_assignment/"> create_account_assignment </a></td>
<td style="text-align: left;">Assigns access to a principal for a
specified AWS account using a specified permission set</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../ssoadmin_create_instance_access_control_attribute_configuration/"> create_instance_access_control_attribute_configuration </a></td>
<td style="text-align: left;">Enables the attributes-based access
control (ABAC) feature for the specified IAM Identity Center
instance</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ssoadmin_create_permission_set/"> create_permission_set </a></td>
<td style="text-align: left;">Creates a permission set within a
specified IAM Identity Center instance</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ssoadmin_delete_account_assignment/"> delete_account_assignment </a></td>
<td style="text-align: left;">Deletes a principal's access from a
specified AWS account using a specified permission set</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../ssoadmin_delete_inline_policy_from_permission_set/"> delete_inline_policy_from_permission_set </a></td>
<td style="text-align: left;">Deletes the inline policy from a specified
permission set</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../ssoadmin_delete_instance_access_control_attribute_configuration/"> delete_instance_access_control_attribute_configuration </a></td>
<td style="text-align: left;">Disables the attributes-based access
control (ABAC) feature for the specified IAM Identity Center instance
and deletes all of the attribute mappings that have been configured</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../ssoadmin_delete_permissions_boundary_from_permission_set/"> delete_permissions_boundary_from_permission_set </a></td>
<td style="text-align: left;">Deletes the permissions boundary from a
specified PermissionSet</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ssoadmin_delete_permission_set/"> delete_permission_set </a></td>
<td style="text-align: left;">Deletes the specified permission set</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../ssoadmin_describe_account_assignment_creation_status/"> describe_account_assignment_creation_status </a></td>
<td style="text-align: left;">Describes the status of the assignment
creation request</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../ssoadmin_describe_account_assignment_deletion_status/"> describe_account_assignment_deletion_status </a></td>
<td style="text-align: left;">Describes the status of the assignment
deletion request</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../ssoadmin_describe_instance_access_control_attribute_configuration/"> describe_instance_access_control_attribute_configuration </a></td>
<td style="text-align: left;">Returns the list of IAM Identity Center
identity store attributes that have been configured to work with
attributes-based access control (ABAC) for the specified IAM Identity
Center instance</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ssoadmin_describe_permission_set/"> describe_permission_set </a></td>
<td style="text-align: left;">Gets the details of the permission
set</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../ssoadmin_describe_permission_set_provisioning_status/"> describe_permission_set_provisioning_status </a></td>
<td style="text-align: left;">Describes the status for the given
permission set provisioning request</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../ssoadmin_detach_customer_managed_policy_reference_from_permission_set/"> detach_customer_managed_policy_reference_from_permission_set </a></td>
<td style="text-align: left;">Detaches the specified customer managed
policy from the specified PermissionSet</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../ssoadmin_detach_managed_policy_from_permission_set/"> detach_managed_policy_from_permission_set </a></td>
<td style="text-align: left;">Detaches the attached AWS managed policy
ARN from the specified permission set</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ssoadmin_get_inline_policy_for_permission_set/"> get_inline_policy_for_permission_set </a></td>
<td style="text-align: left;">Obtains the inline policy assigned to the
permission set</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../ssoadmin_get_permissions_boundary_for_permission_set/"> get_permissions_boundary_for_permission_set </a></td>
<td style="text-align: left;">Obtains the permissions boundary for a
specified PermissionSet</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../ssoadmin_list_account_assignment_creation_status/"> list_account_assignment_creation_status </a></td>
<td style="text-align: left;">Lists the status of the AWS account
assignment creation requests for a specified IAM Identity Center
instance</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../ssoadmin_list_account_assignment_deletion_status/"> list_account_assignment_deletion_status </a></td>
<td style="text-align: left;">Lists the status of the AWS account
assignment deletion requests for a specified IAM Identity Center
instance</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ssoadmin_list_account_assignments/"> list_account_assignments </a></td>
<td style="text-align: left;">Lists the assignee of the specified AWS
account with the specified permission set</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../ssoadmin_list_accounts_for_provisioned_permission_set/"> list_accounts_for_provisioned_permission_set </a></td>
<td style="text-align: left;">Lists all the AWS accounts where the
specified permission set is provisioned</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../ssoadmin_list_customer_managed_policy_references_in_permission_set/"> list_customer_managed_policy_references_in_permission_set </a></td>
<td style="text-align: left;">Lists all customer managed policies
attached to a specified PermissionSet</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ssoadmin_list_instances/"> list_instances </a></td>
<td style="text-align: left;">Lists the IAM Identity Center instances
that the caller has access to</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../ssoadmin_list_managed_policies_in_permission_set/"> list_managed_policies_in_permission_set </a></td>
<td style="text-align: left;">Lists the AWS managed policy that is
attached to a specified permission set</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../ssoadmin_list_permission_set_provisioning_status/"> list_permission_set_provisioning_status </a></td>
<td style="text-align: left;">Lists the status of the permission set
provisioning requests for a specified IAM Identity Center instance</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ssoadmin_list_permission_sets/"> list_permission_sets </a></td>
<td style="text-align: left;">Lists the PermissionSets in an IAM
Identity Center instance</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../ssoadmin_list_permission_sets_provisioned_to_account/"> list_permission_sets_provisioned_to_account </a></td>
<td style="text-align: left;">Lists all the permission sets that are
provisioned to a specified AWS account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ssoadmin_list_tags_for_resource/"> list_tags_for_resource </a></td>
<td style="text-align: left;">Lists the tags that are attached to a
specified resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ssoadmin_provision_permission_set/"> provision_permission_set </a></td>
<td style="text-align: left;">The process by which a specified
permission set is provisioned to the specified target</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ssoadmin_put_inline_policy_to_permission_set/"> put_inline_policy_to_permission_set </a></td>
<td style="text-align: left;">Attaches an inline policy to a permission
set</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../ssoadmin_put_permissions_boundary_to_permission_set/"> put_permissions_boundary_to_permission_set </a></td>
<td style="text-align: left;">Attaches an AWS managed or customer
managed policy to the specified PermissionSet as a permissions
boundary</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ssoadmin_tag_resource/"> tag_resource </a></td>
<td style="text-align: left;">Associates a set of tags with a specified
resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ssoadmin_untag_resource/"> untag_resource </a></td>
<td style="text-align: left;">Disassociates a set of tags from a
specified resource</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../ssoadmin_update_instance_access_control_attribute_configuration/"> update_instance_access_control_attribute_configuration </a></td>
<td style="text-align: left;">Updates the IAM Identity Center identity
store attributes that you can use with the IAM Identity Center instance
for attributes-based access control (ABAC)</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ssoadmin_update_permission_set/"> update_permission_set </a></td>
<td style="text-align: left;">Updates an existing permission set</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- ssoadmin()
    svc$attach_customer_managed_policy_reference_to_permission_set(
      Foo = 123
    )

    ## End(Not run)

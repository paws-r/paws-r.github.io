<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>iam_list_policies_granting_service_access</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves a list of policies that the IAM identity (user, group, or role) can use to access each specified service

### Description

Retrieves a list of policies that the IAM identity (user, group, or
role) can use to access each specified service.

This operation does not use other policy types when determining whether
a resource could access a service. These other policy types include
resource-based policies, access control lists, Organizations policies,
IAM permissions boundaries, and STS assume role policies. It only
applies permissions policy logic. For more about the evaluation of
policy types, see [Evaluating
policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_evaluation-logic.html#policy-eval-basics)
in the *IAM User Guide*.

The list of policies returned by the operation depends on the ARN of the
identity that you provide.

-   **User** – The list of policies includes the managed and inline
    policies that are attached to the user directly. The list also
    includes any additional managed and inline policies that are
    attached to the group to which the user belongs.

-   **Group** – The list of policies includes only the managed and
    inline policies that are attached to the group directly. Policies
    that are attached to the group’s user are not included.

-   **Role** – The list of policies includes only the managed and inline
    policies that are attached to the role.

For each managed policy, this operation returns the ARN and policy name.
For each inline policy, it returns the policy name and the entity to
which it is attached. Inline policies do not have an ARN. For more
information about these policy types, see [Managed policies and inline
policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_managed-vs-inline.html)
in the *IAM User Guide*.

Policies that are attached to users and roles as permissions boundaries
are not returned. To view which managed policy is currently used to set
the permissions boundary for a user or role, use the `get_user` or
`get_role` operations.

### Usage

    iam_list_policies_granting_service_access(Marker, Arn,
      ServiceNamespaces)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="iam_list_policies_granting_service_access_:_Marker">Marker</code></td>
<td><p>Use this parameter only when paginating results and only after
you receive a response indicating that the results are truncated. Set it
to the value of the <code>Marker</code> element in the response that you
received to indicate where the next call should start.</p></td>
</tr>
<tr class="even">
<td><code
id="iam_list_policies_granting_service_access_:_Arn">Arn</code></td>
<td><p>[required] The ARN of the IAM identity (user, group, or role)
whose policies you want to list.</p></td>
</tr>
<tr class="odd">
<td><code
id="iam_list_policies_granting_service_access_:_ServiceNamespaces">ServiceNamespaces</code></td>
<td><p>[required] The service namespace for the Amazon Web Services
services whose policies you want to list.</p>
<p>To learn the service namespace for a service, see <a
href="https://docs.aws.amazon.com/service-authorization/latest/reference/reference_policies_actions-resources-contextkeys.html">Actions,
resources, and condition keys for Amazon Web Services services</a> in
the <em>IAM User Guide</em>. Choose the name of the service to view
details for that service. In the first paragraph, find the service
prefix. For example, <code
style="white-space: pre;">⁠(service prefix: a4b)⁠</code>. For more
information about service namespaces, see <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html#genref-aws-service-namespaces">Amazon
Web Services service namespaces</a> in the <em>Amazon Web Services
General Reference</em>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      PoliciesGrantingServiceAccess = list(
        list(
          ServiceNamespace = "string",
          Policies = list(
            list(
              PolicyName = "string",
              PolicyType = "INLINE"|"MANAGED",
              PolicyArn = "string",
              EntityType = "USER"|"ROLE"|"GROUP",
              EntityName = "string"
            )
          )
        )
      ),
      IsTruncated = TRUE|FALSE,
      Marker = "string"
    )

### Request syntax

    svc$list_policies_granting_service_access(
      Marker = "string",
      Arn = "string",
      ServiceNamespaces = list(
        "string"
      )
    )

### Examples

    ## Not run: 
    # The following operation lists policies that allow ExampleUser01 to
    # access IAM or EC2.
    svc$list_policies_granting_service_access(
      Arn = "arn:aws:iam::123456789012:user/ExampleUser01",
      ServiceNamespaces = list(
        "iam",
        "ec2"
      )
    )

    ## End(Not run)

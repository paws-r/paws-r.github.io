<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>iam_generate_service_last_accessed_details</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Generates a report that includes details about when an IAM resource (user, group, role, or policy) was last used in an attempt to access Amazon Web Services services

### Description

Generates a report that includes details about when an IAM resource
(user, group, role, or policy) was last used in an attempt to access
Amazon Web Services services. Recent activity usually appears within
four hours. IAM reports activity for at least the last 400 days, or less
if your Region began supporting this feature within the last year. For
more information, see [Regions where data is
tracked](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html#access-advisor_tracking-period).

The service last accessed data includes all attempts to access an Amazon
Web Services API, not just the successful ones. This includes all
attempts that were made using the Amazon Web Services Management
Console, the Amazon Web Services API through any of the SDKs, or any of
the command line tools. An unexpected entry in the service last accessed
data does not mean that your account has been compromised, because the
request might have been denied. Refer to your CloudTrail logs as the
authoritative source for information about all API calls and whether
they were successful or denied access. For more information,
see [Logging IAM events with
CloudTrail](https://docs.aws.amazon.com/IAM/latest/UserGuide/cloudtrail-integration.html)
in the *IAM User Guide*.

The `generate_service_last_accessed_details` operation returns a
`JobId`. Use this parameter in the following operations to retrieve the
following details from your report:

-   `get_service_last_accessed_details` – Use this operation for users,
    groups, roles, or policies to list every Amazon Web Services service
    that the resource could access using permissions policies. For each
    service, the response includes information about the most recent
    access attempt.

    The `JobId` returned by `GenerateServiceLastAccessedDetail` must be
    used by the same role within a session, or by the same user when
    used to call `GetServiceLastAccessedDetail`.

-   `get_service_last_accessed_details_with_entities` – Use this
    operation for groups and policies to list information about the
    associated entities (users or roles) that attempted to access a
    specific Amazon Web Services service.

To check the status of the `generate_service_last_accessed_details`
request, use the `JobId` parameter in the same operations and test the
`JobStatus` response parameter.

For additional information about the permissions policies that allow an
identity (user, group, or role) to access specific services, use the
`list_policies_granting_service_access` operation.

Service last accessed data does not use other policy types when
determining whether a resource could access a service. These other
policy types include resource-based policies, access control lists,
Organizations policies, IAM permissions boundaries, and STS assume role
policies. It only applies permissions policy logic. For more about the
evaluation of policy types, see [Evaluating
policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_evaluation-logic.html#policy-eval-basics)
in the *IAM User Guide*.

For more information about service and action last accessed data, see
[Reducing permissions using service last accessed
data](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html)
in the *IAM User Guide*.

### Usage

    iam_generate_service_last_accessed_details(Arn, Granularity)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="iam_generate_service_last_accessed_details_:_Arn">Arn</code></td>
<td><p>[required] The ARN of the IAM resource (user, group, role, or
managed policy) used to generate information about when the resource was
last used in an attempt to access an Amazon Web Services
service.</p></td>
</tr>
<tr class="even">
<td><code
id="iam_generate_service_last_accessed_details_:_Granularity">Granularity</code></td>
<td><p>The level of detail that you want to generate. You can specify
whether you want to generate information about the last attempt to
access services or actions. If you specify service-level granularity,
this operation generates only service data. If you specify action-level
granularity, it generates service and action data. If you don't include
this optional parameter, the operation generates service data.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      JobId = "string"
    )

### Request syntax

    svc$generate_service_last_accessed_details(
      Arn = "string",
      Granularity = "SERVICE_LEVEL"|"ACTION_LEVEL"
    )

### Examples

    ## Not run: 
    # The following operation generates a report for the policy:
    # ExamplePolicy1
    svc$generate_service_last_accessed_details(
      Arn = "arn:aws:iam::123456789012:policy/ExamplePolicy1"
    )

    ## End(Not run)

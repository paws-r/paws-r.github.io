<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>support</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## AWS Support

### Description

Amazon Web Services Support

The *Amazon Web Services Support API Reference* is intended for
programmers who need detailed information about the Amazon Web Services
Support operations and data types. You can use the API to manage your
support cases programmatically. The Amazon Web Services Support API uses
HTTP methods that return results in JSON format.

-   You must have a Business, Enterprise On-Ramp, or Enterprise Support
    plan to use the Amazon Web Services Support API.

-   If you call the Amazon Web Services Support API from an account that
    doesn't have a Business, Enterprise On-Ramp, or Enterprise Support
    plan, the `SubscriptionRequiredException` error message appears. For
    information about changing your support plan, see [Amazon Web
    Services Support](https://aws.amazon.com/premiumsupport/).

You can also use the Amazon Web Services Support API to access features
for [Trusted
Advisor](https://aws.amazon.com/premiumsupport/technology/trusted-advisor/).
You can return a list of checks and their descriptions, get check
results, specify checks to refresh, and get the refresh status of
checks.

You can manage your support cases with the following Amazon Web Services
Support API operations:

-   The `create_case`, `describe_cases`, `describe_attachment`, and
    `resolve_case` operations create Amazon Web Services Support cases,
    retrieve information about cases, and resolve cases.

-   The `describe_communications`, `add_communication_to_case`, and
    `add_attachments_to_set` operations retrieve and add communications
    and attachments to Amazon Web Services Support cases.

-   The `describe_services` and `describe_severity_levels` operations
    return Amazon Web Service names, service codes, service categories,
    and problem severity levels. You use these values when you call the
    `create_case` operation.

You can also use the Amazon Web Services Support API to call the Trusted
Advisor operations. For more information, see [Trusted
Advisor](https://docs.aws.amazon.com/) in the *Amazon Web Services
Support User Guide*.

For authentication of requests, Amazon Web Services Support uses
[Signature Version 4 Signing
Process](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html).

For more information about this service and the endpoints to use, see
[About the Amazon Web Services Support
API](https://docs.aws.amazon.com/awssupport/latest/user/about-support-api.html)
in the *Amazon Web Services Support User Guide*.

### Usage

    support(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="support_:_config">config</code></td>
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

    svc <- support(
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
<td style="text-align: left;"><a href="../support_add_attachments_to_set/"> add_attachments_to_set </a></td>
<td style="text-align: left;">Adds one or more attachments to an
attachment set</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../support_add_communication_to_case/"> add_communication_to_case </a></td>
<td style="text-align: left;">Adds additional customer communication to
an Amazon Web Services Support case</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../support_create_case/"> create_case </a></td>
<td style="text-align: left;">Creates a case in the Amazon Web Services
Support Center</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../support_describe_attachment/"> describe_attachment </a></td>
<td style="text-align: left;">Returns the attachment that has the
specified ID</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../support_describe_cases/"> describe_cases </a></td>
<td style="text-align: left;">Returns a list of cases that you specify
by passing one or more case IDs</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../support_describe_communications/"> describe_communications </a></td>
<td style="text-align: left;">Returns communications and attachments for
one or more support cases</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../support_describe_create_case_options/"> describe_create_case_options </a></td>
<td style="text-align: left;">Returns a list of CreateCaseOption types
along with the corresponding supported hours and language
availability</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../support_describe_services/"> describe_services </a></td>
<td style="text-align: left;">Returns the current list of Amazon Web
Services services and a list of service categories for each service</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../support_describe_severity_levels/"> describe_severity_levels </a></td>
<td style="text-align: left;">Returns the list of severity levels that
you can assign to a support case</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../support_describe_supported_languages/"> describe_supported_languages </a></td>
<td style="text-align: left;">Returns a list of supported languages for
a specified categoryCode, issueType and serviceCode</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../support_describe_trusted_advisor_check_refresh_statuses/"> describe_trusted_advisor_check_refresh_statuses </a></td>
<td style="text-align: left;">Returns the refresh status of the Trusted
Advisor checks that have the specified check IDs</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../support_describe_trusted_advisor_check_result/"> describe_trusted_advisor_check_result </a></td>
<td style="text-align: left;">Returns the results of the Trusted Advisor
check that has the specified check ID</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../support_describe_trusted_advisor_checks/"> describe_trusted_advisor_checks </a></td>
<td style="text-align: left;">Returns information about all available
Trusted Advisor checks, including the name, ID, category, description,
and metadata</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../support_describe_trusted_advisor_check_summaries/"> describe_trusted_advisor_check_summaries </a></td>
<td style="text-align: left;">Returns the results for the Trusted
Advisor check summaries for the check IDs that you specified</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../support_refresh_trusted_advisor_check/"> refresh_trusted_advisor_check </a></td>
<td style="text-align: left;">Refreshes the Trusted Advisor check that
you specify using the check ID</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../support_resolve_case/"> resolve_case </a></td>
<td style="text-align: left;">Resolves a support case</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- support()
    svc$add_attachments_to_set(
      Foo = 123
    )

    ## End(Not run)

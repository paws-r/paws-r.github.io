<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>support_create_case</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a case in the Amazon Web Services Support Center

### Description

Creates a case in the Amazon Web Services Support Center. This operation
is similar to how you create a case in the Amazon Web Services Support
Center Create Case page.

The Amazon Web Services Support API doesn't support requesting service
limit increases. You can submit a service limit increase in the
following ways:

-   Submit a request from the Amazon Web Services Support Center Create
    Case page.

-   Use the Service Quotas
    [RequestServiceQuotaIncrease](https://docs.aws.amazon.com/servicequotas/2019-06-24/apireference/API_RequestServiceQuotaIncrease.html)
    operation.

A successful `create_case` request returns an Amazon Web Services
Support case number. You can use the `describe_cases` operation and
specify the case number to get existing Amazon Web Services Support
cases. After you create a case, use the `add_communication_to_case`
operation to add additional communication or attachments to an existing
case.

The `caseId` is separate from the `displayId` that appears in the Amazon
Web Services Support Center. Use the `describe_cases` operation to get
the `displayId`.

-   You must have a Business, Enterprise On-Ramp, or Enterprise Support
    plan to use the Amazon Web Services Support API.

-   If you call the Amazon Web Services Support API from an account that
    doesn't have a Business, Enterprise On-Ramp, or Enterprise Support
    plan, the `SubscriptionRequiredException` error message appears. For
    information about changing your support plan, see [Amazon Web
    Services Support](https://aws.amazon.com/premiumsupport/).

### Usage

    support_create_case(subject, serviceCode, severityCode, categoryCode,
      communicationBody, ccEmailAddresses, language, issueType,
      attachmentSetId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="support_create_case_:_subject">subject</code></td>
<td><p>[required] The title of the support case. The title appears in
the <strong>Subject</strong> field on the Amazon Web Services Support
Center Create Case page.</p></td>
</tr>
<tr class="even">
<td><code id="support_create_case_:_serviceCode">serviceCode</code></td>
<td><p>The code for the Amazon Web Services service. You can use the
<code>describe_services</code> operation to get the possible
<code>serviceCode</code> values.</p></td>
</tr>
<tr class="odd">
<td><code
id="support_create_case_:_severityCode">severityCode</code></td>
<td><p>A value that indicates the urgency of the case. This value
determines the response time according to your service level agreement
with Amazon Web Services Support. You can use the
<code>describe_severity_levels</code> operation to get the possible
values for <code>severityCode</code>.</p>
<p>For more information, see SeverityLevel and <a
href="https://docs.aws.amazon.com/awssupport/latest/user/getting-started.html#choosing-severity">Choosing
a Severity</a> in the <em>Amazon Web Services Support User
Guide</em>.</p>
<p>The availability of severity levels depends on the support plan for
the Amazon Web Services account.</p></td>
</tr>
<tr class="even">
<td><code
id="support_create_case_:_categoryCode">categoryCode</code></td>
<td><p>The category of problem for the support case. You also use the
<code>describe_services</code> operation to get the category code for a
service. Each Amazon Web Services service defines its own set of
category codes.</p></td>
</tr>
<tr class="odd">
<td><code
id="support_create_case_:_communicationBody">communicationBody</code></td>
<td><p>[required] The communication body text that describes the issue.
This text appears in the <strong>Description</strong> field on the
Amazon Web Services Support Center Create Case page.</p></td>
</tr>
<tr class="even">
<td><code
id="support_create_case_:_ccEmailAddresses">ccEmailAddresses</code></td>
<td><p>A list of email addresses that Amazon Web Services Support copies
on case correspondence. Amazon Web Services Support identifies the
account that creates the case when you specify your Amazon Web Services
credentials in an HTTP POST method or use the <a
href="https://aws.amazon.com/developer/tools/">Amazon Web Services
SDKs</a>.</p></td>
</tr>
<tr class="odd">
<td><code id="support_create_case_:_language">language</code></td>
<td><p>The language in which Amazon Web Services Support handles the
case. Amazon Web Services Support currently supports Chinese (“zh”),
English ("en"), Japanese ("ja") and Korean (“ko”). You must specify the
ISO 639-1 code for the <code>language</code> parameter if you want
support in that language.</p></td>
</tr>
<tr class="even">
<td><code id="support_create_case_:_issueType">issueType</code></td>
<td><p>The type of issue for the case. You can specify
<code>customer-service</code> or <code>technical</code>. If you don't
specify a value, the default is <code>technical</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="support_create_case_:_attachmentSetId">attachmentSetId</code></td>
<td><p>The ID of a set of one or more attachments for the case. Create
the set by using the <code>add_attachments_to_set</code>
operation.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      caseId = "string"
    )

### Request syntax

    svc$create_case(
      subject = "string",
      serviceCode = "string",
      severityCode = "string",
      categoryCode = "string",
      communicationBody = "string",
      ccEmailAddresses = list(
        "string"
      ),
      language = "string",
      issueType = "string",
      attachmentSetId = "string"
    )

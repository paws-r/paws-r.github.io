<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>support_add_communication_to_case</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds additional customer communication to an Amazon Web Services Support case

### Description

Adds additional customer communication to an Amazon Web Services Support
case. Use the `caseId` parameter to identify the case to which to add
communication. You can list a set of email addresses to copy on the
communication by using the `ccEmailAddresses` parameter. The
`communicationBody` value contains the text of the communication.

-   You must have a Business, Enterprise On-Ramp, or Enterprise Support
    plan to use the Amazon Web Services Support API.

-   If you call the Amazon Web Services Support API from an account that
    doesn't have a Business, Enterprise On-Ramp, or Enterprise Support
    plan, the `SubscriptionRequiredException` error message appears. For
    information about changing your support plan, see [Amazon Web
    Services Support](https://aws.amazon.com/premiumsupport/).

### Usage

    support_add_communication_to_case(caseId, communicationBody,
      ccEmailAddresses, attachmentSetId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="support_add_communication_to_case_:_caseId">caseId</code></td>
<td><p>The support case ID requested or returned in the call. The case
ID is an alphanumeric string formatted as shown in this example:
case-<em>12345678910-2013-c4c1d2bf33c5cf47</em></p></td>
</tr>
<tr class="even">
<td><code
id="support_add_communication_to_case_:_communicationBody">communicationBody</code></td>
<td><p>[required] The body of an email communication to add to the
support case.</p></td>
</tr>
<tr class="odd">
<td><code
id="support_add_communication_to_case_:_ccEmailAddresses">ccEmailAddresses</code></td>
<td><p>The email addresses in the CC line of an email to be added to the
support case.</p></td>
</tr>
<tr class="even">
<td><code
id="support_add_communication_to_case_:_attachmentSetId">attachmentSetId</code></td>
<td><p>The ID of a set of one or more attachments for the communication
to add to the case. Create the set by calling
<code>add_attachments_to_set</code></p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      result = TRUE|FALSE
    )

### Request syntax

    svc$add_communication_to_case(
      caseId = "string",
      communicationBody = "string",
      ccEmailAddresses = list(
        "string"
      ),
      attachmentSetId = "string"
    )

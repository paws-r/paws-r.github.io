<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>support_resolve_case</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Resolves a support case

### Description

Resolves a support case. This operation takes a `caseId` and returns the
initial and final state of the case.

-   You must have a Business, Enterprise On-Ramp, or Enterprise Support
    plan to use the Amazon Web Services Support API.

-   If you call the Amazon Web Services Support API from an account that
    doesn't have a Business, Enterprise On-Ramp, or Enterprise Support
    plan, the `SubscriptionRequiredException` error message appears. For
    information about changing your support plan, see [Amazon Web
    Services Support](https://aws.amazon.com/premiumsupport/).

### Usage

    support_resolve_case(caseId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="support_resolve_case_:_caseId">caseId</code></td>
<td><p>The support case ID requested or returned in the call. The case
ID is an alphanumeric string formatted as shown in this example:
case-<em>12345678910-2013-c4c1d2bf33c5cf47</em></p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      initialCaseStatus = "string",
      finalCaseStatus = "string"
    )

### Request syntax

    svc$resolve_case(
      caseId = "string"
    )
